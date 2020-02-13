------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_g[8u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 10 d2 9d c8 f7 7f 00 00 e8 87 d8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 c9 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 60 cd 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89dd210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d2 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 d8 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 c9 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bcd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 cd 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 48 00 a0 c8 f7 7f 00 00 e8 37 d3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 c4 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 00 ce 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8a00048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 a0 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 d3 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 c4 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bce00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ce 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n128,UnaryBitLogicKind~8u)[54] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c0 d3 9d c8 f7 7f 00 00 e8 e7 d1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 c3}
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
001ah mov rcx,7ff7c89dd3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d3 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 d1 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 18 c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<short>> lookup<short>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_g[16i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 e0 dd 9d c8 f7 7f 00 00 e8 97 d0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 c1 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 ce 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89ddde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 d0 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 c1 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bcea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 ce 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 70 d5 9d c8 f7 7f 00 00 e8 47 cf b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 c0 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 ce 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89dd570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d5 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 cf b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 c0 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bcef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 ce 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 90 df 9d c8 f7 7f 00 00 e8 f7 cd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 bf b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 40 cf 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89ddf90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 df 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 cd b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 bf b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bcf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 cf 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 b5 9d c8 f7 7f 00 00 e8 a7 cc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 bd b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 28 f0 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89db540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b5 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 cc b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 bd b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bf028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 f0 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f8 01 a0 c8 f7 7f 00 00 e8 57 cb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 bc b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 78 f0 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8a001f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 01 a0 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 cb b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 bc b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bf078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 f0 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d0 d8 9d c8 f7 7f 00 00 e8 07 ca b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 bb b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 68 f1 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89dd8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d8 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ca b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 bb b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bf168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 f1 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a8 03 a0 c8 f7 7f 00 00 e8 b7 c8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 b9 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 08 f2 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8a003a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 03 a0 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 c8 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 b9 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bf208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 f2 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 80 da 9d c8 f7 7f 00 00 e8 67 c7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 b8 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 58 f2 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89dda80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 da 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 c7 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 b8 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bf258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 f2 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 e1 9d c8 f7 7f 00 00 e8 17 c6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 b7 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 f2 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89de140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e1 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c6 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 b7 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bf2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 f2 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 30 dc 9d c8 f7 7f 00 00 e8 c7 c4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 b5 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 f2 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89ddc30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dc 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 c4 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 b5 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bf2f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 f2 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n256,UnaryBitLogicKind~8u)[39] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f0 e2 9d c8 f7 7f 00 00 e8 77 c3}
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
001ah mov rcx,7ff7c89de2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e2 9d c8 f7 7f 00 00}
0024h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 77 c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ulong>> lookup<ulong>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_g[64u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 20 d7 9d c8 f7 7f 00 00 e8 27 c2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 b3 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 98 f3 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89dd720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d7 9d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c2 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b3 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bf398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 f3 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 78 20 a0 c8 f7 7f 00 00 e8 d7 c0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 b2 b9 5e 48 b8 00 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 f3 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8a02078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 20 a0 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 c0 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 b2 b9 5e}
0038h mov rax,7ff7c761e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bf3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 f3 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 72 9d c8 f7 7f 00 00 e8 70 bf b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 b0 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 02 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 bf b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 b0 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c0288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 02 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 6f 9d c8 f7 7f 00 00 e8 b0 bd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 ae b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 08 03 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 bd b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ae b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c0308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 03 6c c8 f7 7f 00 00}
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
; lookup_g[16u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 f0 bb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 ad b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 48 03 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 bb b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 ad b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c0348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 03 6c c8 f7 7f 00 00}
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
; lookup_g[16i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 6a 9d c8 f7 7f 00 00 e8 30 ba b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 ab b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 03 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 ba b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 ab b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c0388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 03 6c c8 f7 7f 00 00}
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
; lookup_g[32u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 7d 9d c8 f7 7f 00 00 e8 70 b8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 a9 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 03 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 b8 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 a9 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c03c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 03 6c c8 f7 7f 00 00}
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
; lookup_g[32i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 7a 9d c8 f7 7f 00 00 e8 b0 b6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 a7 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 08 04 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 b6 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 a7 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c0408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 04 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 75 9d c8 f7 7f 00 00 e8 f0 b4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 a6 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 48 04 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 b4 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 a6 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c0448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 04 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 80 9d c8 f7 7f 00 00 e8 30 b3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 a4 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 08 05 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d80c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 80 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 b3 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 a4 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c0508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 05 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 70 ad b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 9e b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 14 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 ad b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 9e b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c1438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 14 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 9d 9d c8 f7 7f 00 00 e8 b0 ab b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 9c b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 14 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 ab b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 9c b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c14b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 14 6c c8 f7 7f 00 00}
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
; lookup_g[16u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 00 9d c8 f7 7f 00 00 e8 f0 a9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 9b b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 14 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 a9 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 9b b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c14f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 14 6c c8 f7 7f 00 00}
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
; lookup_g[16i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 30 a8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 99 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 15 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 a8 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 99 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c1538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 15 6c c8 f7 7f 00 00}
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
; lookup_g[32u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 ab 9d c8 f7 7f 00 00 e8 70 a6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 97 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 78 15 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 a6 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 97 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c1578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 15 6c c8 f7 7f 00 00}
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
; lookup_g[32i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 b0 a4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 95 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 15 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 a4 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 95 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c15b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 15 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 b1 9d c8 f7 7f 00 00 e8 f0 a2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 94 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 15 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89db160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b1 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 a2 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 94 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c15f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 15 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 ae 9d c8 f7 7f 00 00 e8 30 a1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 92 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 24 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 a1 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 92 b9 5e}
004fh mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c2438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 24 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n128,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 18 19 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 18 19 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<sbyte>> lookup<sbyte>(N128 w, ShiftOpKind:byte kind)
; lookup_g[8i](n128,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 88 1e c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 88 1e c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ushort>> lookup<ushort>(N128 w, ShiftOpKind:byte kind)
; lookup_g[16u](n128,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 18 22 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 18 22 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<short>> lookup<short>(N128 w, ShiftOpKind:byte kind)
; lookup_g[16i](n128,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a8 25 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 a8 25 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<uint>> lookup<uint>(N128 w, ShiftOpKind:byte kind)
; lookup_g[32u](n128,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 38 29 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 38 29 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<int>> lookup<int>(N128 w, ShiftOpKind:byte kind)
; lookup_g[32i](n128,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c8 2c c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 c8 2c c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ulong>> lookup<ulong>(N128 w, ShiftOpKind:byte kind)
; lookup_g[64u](n128,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 58 30 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 58 30 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<long>> lookup<long>(N128 w, ShiftOpKind:byte kind)
; lookup_g[64i](n128,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e8 33 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 e8 33 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<byte>> lookup<byte>(N256 w, ShiftOpKind:byte kind)
; lookup_g[8u](n256,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 90 3b c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 90 3b c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<sbyte>> lookup<sbyte>(N256 w, ShiftOpKind:byte kind)
; lookup_g[8i](n256,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 00 41 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 00 41 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ushort>> lookup<ushort>(N256 w, ShiftOpKind:byte kind)
; lookup_g[16u](n256,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 90 44 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 90 44 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<short>> lookup<short>(N256 w, ShiftOpKind:byte kind)
; lookup_g[16i](n256,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 20 48 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 20 48 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
; lookup_g[32u](n256,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 b0 4b c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 b0 4b c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<int>> lookup<int>(N256 w, ShiftOpKind:byte kind)
; lookup_g[32i](n256,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 40 4f c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 40 4f c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ulong>> lookup<ulong>(N256 w, ShiftOpKind:byte kind)
; lookup_g[64u](n256,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 d0 52 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 d0 52 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<long>> lookup<long>(N256 w, ShiftOpKind:byte kind)
; lookup_g[64i](n256,ShiftOpKind~8u)[60] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 60 56 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[5]{48 b9 60 56 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_g[8u](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 72 9d c8 f7 7f 00 00 e8 72 76 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 67 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 24 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 33 76 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 67 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 26 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 f4 75 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 67 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 26 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 b5 75 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 66 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 25 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 76 75 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 66 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 25 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 37 75 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 66 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 25 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 f8 74 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 66 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 26 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 b9 74 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 65 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 25 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 7a 74 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 65 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 26 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 3b 74 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 65 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 26 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 fc 73 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 65 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 25 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 bd 73 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 64 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 25 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 7e 73 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 64 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 25 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 72 9d c8 f7 7f 00 00 e8 3f 73 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 64 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 26 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 72 9d c8 f7 7f 00 00 e8 03 73 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 64 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 25 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 72 9d c8 f7 7f 00 00 e8 c7 72 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 63 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 26 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 76 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 67 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c24e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 24 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 76 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 67 b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c26c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 26 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 75 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 67 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c26a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 26 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 75 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 66 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c2508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 75 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 66 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c25e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 25 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 75 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 66 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c25c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 25 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 74 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 66 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c2608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 26 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 74 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 65 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c25a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 25 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 74 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 65 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c2668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 26 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 74 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 65 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c2628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 26 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 73 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 65 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c2548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 25 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 73 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 64 b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c2588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 25 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 73 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 64 b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c2568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 25 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 73 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 64 b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c2648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 26 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 73 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 64 b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c2528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 25 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89d7280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 72 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 63 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c2688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 26 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 6f 9d c8 f7 7f 00 00 e8 62 71 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 62 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 27 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 23 71 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 62 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 e4 70 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 62 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 a5 70 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 61 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 27 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 66 70 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 61 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 27 70 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 61 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 e8 6f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 61 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 a9 6f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 60 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 6a 6f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 60 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 2b 6f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 60 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 ec 6e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 60 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 ad 6e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 5f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 6e 6e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 5f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 2c 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 6f 9d c8 f7 7f 00 00 e8 2f 6e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 5f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 2c 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 6f 9d c8 f7 7f 00 00 e8 f3 6d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 5f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 27 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 6f 9d c8 f7 7f 00 00 e8 b7 6d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 5e b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 e0 2c 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 71 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 62 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c27d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 27 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 71 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 62 b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c2d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 2d 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 70 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 62 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c2cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 2c 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 70 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 61 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c27e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 27 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 70 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 61 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c2c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 2c 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 70 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 61 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c2c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 2c 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 6f b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 61 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c2ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 2c 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 6f b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 60 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c2c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 2c 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 6f b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 60 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c2cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2c 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 6f b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 60 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c2cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2c 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 6e b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 60 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c2c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 2c 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 6e b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 5f b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c2c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2c 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 6e b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 5f b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c2c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2c 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 6e b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 5f b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c2cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2c 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 6d b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 5f b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c27f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 27 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89d6f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 6d b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 5e b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c2ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 2c 6c c8 f7 7f 00 00}
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
; lookup_g[16u](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 52 6c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 5d b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 13 6c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 5d b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 d4 6b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 5d b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 95 6b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 5c b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 56 6b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 5c b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 17 6b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 5c b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 d8 6a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 5c b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 99 6a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 5b b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 5a 6a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 5b b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 1b 6a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 5b b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 dc 69 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 5b b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 9d 69 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 5a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 5e 69 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 5a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 2d 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 1f 69 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 5a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 2d 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 e3 68 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 5a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 2d 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 6b 9d c8 f7 7f 00 00 e8 a7 68 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 59 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 2d 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 6c b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 5d b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c2d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2d 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 6c b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 5d b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c2e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 2e 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 6b b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 5d b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c2e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 2e 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 6b b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 5c b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c2d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 2d 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 6b b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 5c b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c2da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 2d 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 6b b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 5c b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c2d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 2d 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 6a b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 5c b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c2db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2d 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 6a b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 5b b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c2d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 2d 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 6a b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 5b b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c2de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 2d 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 6a b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 5b b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 69 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 5b b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c2d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2d 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 69 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 5a b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c2d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 2d 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 69 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 5a b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c2d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2d 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 69 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 5a b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c2dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2d 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 68 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 5a b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c2d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 2d 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89d6bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 68 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 59 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c2df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 2d 6c c8 f7 7f 00 00}
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
; lookup_g[16i](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 6a 9d c8 f7 7f 00 00 e8 42 63 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 54 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 03 63 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 54 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 c4 62 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 53 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 85 62 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 53 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 46 62 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 53 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 07 62 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 53 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 c8 61 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 52 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 89 61 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 52 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 4a 61 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 52 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 0b 61 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 52 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 cc 60 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 51 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 8d 60 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 51 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 4e 60 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 51 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 2e 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 6a 9d c8 f7 7f 00 00 e8 0f 60 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 51 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 2e 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 6a 9d c8 f7 7f 00 00 e8 d3 5f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 51 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 2e 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 6a 9d c8 f7 7f 00 00 e8 97 5f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 50 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 00 2f 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 63 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 54 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c2e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 2e 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 63 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 54 b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c2f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2f 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 62 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 53 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c2f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 2f 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 62 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 53 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c2e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 2e 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 62 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 53 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c2eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2e 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 62 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 53 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c2ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 2e 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 61 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 52 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c2ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2e 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 61 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 52 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c2e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 2e 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 61 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 52 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c2ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 2e 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 61 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 52 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c2ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2e 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 60 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 51 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c2e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2e 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 60 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 51 b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c2e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 2e 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 60 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 51 b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c2e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 2e 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 60 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 51 b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c2ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 2e 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 5f b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 51 b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c2e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2e 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89d6a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6a 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 5f b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 50 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c2f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 2f 6c c8 f7 7f 00 00}
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
; lookup_g[32u](n128,BinaryBitLogicKind~8u)[938] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 7d 9d c8 f7 7f 00 00 e8 32 5e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 4f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 f3 5d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 4f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 b4 5d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 4e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 75 5d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 4e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 36 5d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 4e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 f7 5c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 4e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 b8 5c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 4d b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 79 5c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 4d b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 3a 5c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 4d b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 fb 5b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 4d b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 bc 5b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 4c b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 7d 5b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 4c b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 3e 5b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 4c b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 7d 9d c8 f7 7f 00 00 e8 ff 5a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 4c b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 2f 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 7d 9d c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 5e b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 4f b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c2f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 2f 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 5d b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 4f b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c3030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 30 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 5d b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 4e b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c3020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 30 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 5d b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 4e b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c2f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2f 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 5d b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 4e b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c2fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2f 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 5c b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 4e b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c2fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2f 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 5c b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 4d b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c2fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 5c b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 4d b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c2fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 2f 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 5c b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 4d b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c3000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 30 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 5b b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 4d b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c2fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 2f 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 5b b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 4c b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c2f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 2f 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 5b b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 4c b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c2f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 2f 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 5b b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 4c b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c2f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 2f 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 5a b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 4c b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c2ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 2f 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 9d c8 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_g[32i](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 7a 9d c8 f7 7f 00 00 e8 22 59 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 4a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 3b 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 e3 58 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 4a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 a4 58 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 49 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 65 58 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 49 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 3b 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 26 58 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 49 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 e7 57 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 49 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 a8 57 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 48 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 69 57 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 48 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 2a 57 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 48 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 eb 56 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 48 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 ac 56 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 47 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 6d 56 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 47 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 2e 56 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 47 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 7a 9d c8 f7 7f 00 00 e8 ef 55 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 47 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 3c 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 7a 9d c8 f7 7f 00 00 e8 b3 55 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 46 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 3c 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 7a 9d c8 f7 7f 00 00 e8 77 55 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 46 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 3c 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 59 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 4a b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c3be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 3b 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 58 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 4a b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c3cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3c 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 58 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 49 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c3cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3c 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 58 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 49 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c3bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 3b 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 58 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 49 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c3c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 3c 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 57 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 49 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c3c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 3c 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 57 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 48 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c3c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3c 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 57 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 48 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c3c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 3c 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 57 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 48 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c3ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 3c 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 56 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 48 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c3c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 3c 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 56 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 47 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c3c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 3c 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 56 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 47 b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c3c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 3c 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 56 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 47 b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c3c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 3c 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 55 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 47 b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c3c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 3c 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 55 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 46 b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c3c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 3c 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89d7a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 55 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 46 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c3cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 3c 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 75 9d c8 f7 7f 00 00 e8 12 54 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 45 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 d3 53 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 45 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 94 53 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 44 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 55 53 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 44 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 16 53 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 44 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 d7 52 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 44 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 98 52 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 43 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 59 52 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 43 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 1a 52 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 43 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 db 51 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 43 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 9c 51 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 42 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 5d 51 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 42 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 1e 51 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 42 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 75 9d c8 f7 7f 00 00 e8 df 50 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 42 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 3d 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 75 9d c8 f7 7f 00 00 e8 a3 50 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 41 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 3d 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 75 9d c8 f7 7f 00 00 e8 67 50 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 41 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 c0 3d 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 54 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 45 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c3cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 3c 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 53 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 45 b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c3de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 3d 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 53 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 44 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c3dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3d 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 53 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 44 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c3d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 3d 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 53 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 44 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c3d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3d 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 52 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 44 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c3d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 3d 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 52 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 43 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c3d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 3d 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 52 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 43 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c3d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 3d 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 52 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 43 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c3db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 3d 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 51 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 43 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c3d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 3d 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 51 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 42 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c3d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 3d 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 51 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 42 b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c3d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 3d 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 51 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 42 b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c3d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 3d 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 50 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 42 b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c3da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 3d 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 50 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 41 b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c3d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 3d 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89d75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 50 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 41 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c3dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 3d 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n128,BinaryBitLogicKind~8u)[122] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 80 9d c8 f7 7f 00 00 e8 02 4f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 40 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 3e 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 80 9d c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c89d80c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 80 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 4f b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 40 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c3e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 3e 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d80c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 80 9d c8 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_g[8u](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 f2 49 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 3b b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 3f 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 b3 49 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 3a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 4a 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 74 49 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 3a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 4a 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 35 49 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 3a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 3f 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 f6 48 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 3a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 49 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 b7 48 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 39 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 49 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 78 48 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 39 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 49 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 39 48 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 39 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 49 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 fa 47 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 39 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 49 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 bb 47 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 38 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 49 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 7c 47 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 38 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 48 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 3d 47 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 38 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 48 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 fe 46 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 38 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 48 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 bf 46 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 37 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 49 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 83 46 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 37 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 48 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 a0 9d c8 f7 7f 00 00 e8 47 46 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 37 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 49 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 49 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 3b b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c3fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 3f 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 49 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 3a b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c4a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 4a 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 49 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 3a b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c4a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 4a 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 49 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 3a b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c3fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3f 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 48 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 3a b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c4950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 49 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 48 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 39 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c4930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 49 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 48 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 39 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c4970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 49 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 48 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 39 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c4910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 49 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 47 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 39 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c49d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 47 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 38 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c4990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 49 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 47 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 38 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c48b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 48 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 47 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 38 b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c48f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 48 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 46 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 38 b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c48d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 48 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 46 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 37 b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c49b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 49 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 46 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 37 b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c4890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 48 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89da0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 46 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 37 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c49f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 49 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 9d 9d c8 f7 7f 00 00 e8 e2 44 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 36 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 a3 44 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 35 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 4c 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 64 44 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 35 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 4c 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 25 44 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 35 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 e6 43 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 35 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 a7 43 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 34 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 68 43 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 34 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 29 43 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 34 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 ea 42 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 34 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 ab 42 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 33 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 6c 42 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 33 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 2d 42 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 33 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 ee 41 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 33 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 4b 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 9d 9d c8 f7 7f 00 00 e8 af 41 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 32 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 4b 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 9d 9d c8 f7 7f 00 00 e8 73 41 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 32 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 4b 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 9d 9d c8 f7 7f 00 00 e8 37 41 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 32 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 00 4c 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 44 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 36 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c4b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 4b 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 44 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 35 b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c4c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4c 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 44 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 35 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c4c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 4c 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 44 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 35 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c4b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 4b 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 43 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 35 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c4bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4b 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 43 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 34 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c4ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 4b 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 43 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 34 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c4bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 4b 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 43 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 34 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c4b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4b 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 42 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 34 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c4bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 4b 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 42 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 33 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c4bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 4b 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 42 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 33 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c4b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 4b 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 42 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 33 b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c4b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4b 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 41 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 33 b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c4b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 4b 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 41 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 32 b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c4be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4b 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 41 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 32 b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c4b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 4b 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89d9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 41 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 32 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c4c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 4c 6c c8 f7 7f 00 00}
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
; lookup_g[16u](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 00 9d c8 f7 7f 00 00 e8 d2 3f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 31 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 4c 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 93 3f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 30 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 54 3f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 30 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 15 3f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 30 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 4c 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 d6 3e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 30 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 52 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 97 3e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 2f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 52 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 58 3e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 2f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 52 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 19 3e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 2f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 52 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 da 3d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 2f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 52 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 9b 3d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 2e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 52 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 5c 3d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 2e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 4c 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 1d 3d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 2e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 52 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 de 3c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 2e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 52 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 00 9d c8 f7 7f 00 00 e8 9f 3c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 2d b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 52 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 00 9d c8 f7 7f 00 00 e8 63 3c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 2d b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 4c 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 00 9d c8 f7 7f 00 00 e8 27 3c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 2d b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 52 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 3f b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 31 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c4c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 4c 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 3f b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 30 b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c5318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 53 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 3f b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 30 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c5308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 53 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 3f b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 30 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c4c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 4c 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 3e b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 30 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c52a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 52 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 3e b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 2f b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c5298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 52 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 3e b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 2f b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c52b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 52 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 3e b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 2f b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c5288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 52 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 3d b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 2f b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c52e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 52 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 3d b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 2e b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c52c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 52 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 3d b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 2e b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c4c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 4c 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 3d b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 2e b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c5278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 52 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 3c b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 2e b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c5268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 3c b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 2d b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c52d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 52 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 3c b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 2d b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c4c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 4c 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89d0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 3c b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 2d b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c52f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 52 6c c8 f7 7f 00 00}
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
; lookup_g[16i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 c2 3a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 2b b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 83 3a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 2b b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 44 3a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 2b b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 05 3a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 2b b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 c6 39 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 2a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 87 39 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 2a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 48 39 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 2a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 09 39 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 2a b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 ca 38 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 29 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 8b 38 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 29 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 4c 38 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 29 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 0d 38 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 29 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 ce 37 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 28 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 53 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 8f 37 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 28 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 53 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 53 37 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 28 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 53 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 6d 9d c8 f7 7f 00 00 e8 17 37 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 28 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 08 54 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 3a b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 2b b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c5338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 53 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 3a b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 2b b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c5428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 54 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 3a b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 2b b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c5418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 54 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 3a b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 2b b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c5348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 53 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 39 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 2a b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c53b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 53 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 39 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 2a b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c53a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 53 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 39 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 2a b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c53c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 53 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 39 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 2a b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c5398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 53 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 38 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 29 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c53f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 53 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 38 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 29 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c53d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 53 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 38 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 29 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c5368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 53 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 38 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 29 b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c5388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 53 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 37 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 28 b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c5378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 53 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 37 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 28 b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c53e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 53 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 37 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 28 b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c5358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 53 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89d6da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6d 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 37 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 28 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 54 6c c8 f7 7f 00 00}
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
; lookup_g[32u](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 00 ab 9d c8 f7 7f 00 00 e8 b2 35 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 26 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 73 35 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 26 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 34 35 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 26 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 f5 34 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 26 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 b6 34 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 25 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 77 34 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 25 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 38 34 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 25 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 f9 33 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 25 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 ba 33 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 24 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 7b 33 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 24 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 3c 33 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 24 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 fd 32 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 24 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 be 32 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 23 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 54 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 ab 9d c8 f7 7f 00 00 e8 7f 32 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 23 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 54 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 ab 9d c8 f7 7f 00 00 e8 43 32 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 23 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 54 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 ab 9d c8 f7 7f 00 00 e8 07 32 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 23 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 18 55 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 35 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 26 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c5448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 54 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 35 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 26 b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c5538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 55 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 35 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 26 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c5528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 55 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 34 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 26 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c5458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 54 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 34 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 25 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c54c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 54 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 34 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 25 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c54b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 54 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 34 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 25 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c54d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 54 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 33 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 25 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c54a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 54 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 33 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 24 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c5508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 55 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 33 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 24 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c54e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 54 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 33 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 24 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c5478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 54 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 32 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 24 b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c5498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 54 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 32 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 23 b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c5488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 54 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 32 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 23 b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c54f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 54 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 32 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 23 b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c5468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 54 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89dab00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ab 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 32 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 23 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c5518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 55 6c c8 f7 7f 00 00}
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
; lookup_g[32i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 a2 30 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 21 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 63 30 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 21 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 56 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 24 30 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 21 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 56 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 e5 2f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 21 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 a6 2f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 20 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 67 2f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 20 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 28 2f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 20 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 e9 2e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 20 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 aa 2e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 1f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 56 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 6b 2e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 1f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 2c 2e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 1f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 ed 2d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 1f b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 ae 2d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 1e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 55 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 6f 2d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 1e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 56 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 33 2d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 1e b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 55 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 a7 9d c8 f7 7f 00 00 e8 f7 2c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 1e b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 28 56 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 30 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 21 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c5558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 55 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 30 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 21 b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c5648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 56 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 30 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 21 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c5638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 56 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 2f b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 21 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c5568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 55 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 2f b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 20 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c55d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 55 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 2f b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 20 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c55c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 55 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 2f b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 20 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c55e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 55 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 2e b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 20 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c55b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 55 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 2e b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 1f b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c5618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 56 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 2e b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 1f b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c55f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 55 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 2e b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 1f b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c5588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 55 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 2d b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 1f b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c55a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 55 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 2d b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 1e b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c5598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 55 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 2d b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 1e b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c5608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 56 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 2d b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 1e b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c5578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 55 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89da7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 2c b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 1e b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c5628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 56 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n256,BinaryBitLogicKind~8u)[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 b1 9d c8 f7 7f 00 00 e8 92 2b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
002fh mov rcx,7ff7c89db160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b1 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 2b b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_g[64i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 30 ae 9d c8 f7 7f 00 00 e8 82 26 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 17 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 43 26 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 17 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 64 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 04 26 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 17 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 64 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 c5 25 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 16 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 86 25 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 16 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 47 25 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 16 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 08 25 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 16 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 c9 24 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 15 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 8a 24 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 15 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 4b 24 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 15 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 0c 24 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 15 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 cd 23 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 14 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 8e 23 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 14 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 63 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 ae 9d c8 f7 7f 00 00 e8 4f 23 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 14 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 63 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 ae 9d c8 f7 7f 00 00 e8 13 23 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 14 b9 5e 48 b9 90 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 63 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 ae 9d c8 f7 7f 00 00 e8 d7 22 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 14 b9 5e 48 b8 90 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 08 64 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 26 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 17 b9 5e}
004dh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c6338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 63 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 26 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 17 b9 5e}
008ch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c6428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 64 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 26 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 17 b9 5e}
00cbh mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c6418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 64 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 25 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 16 b9 5e}
010ah mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c6348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 63 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 25 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 16 b9 5e}
0149h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c63b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 63 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 25 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 16 b9 5e}
0188h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c63a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 63 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 25 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 16 b9 5e}
01c7h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c63c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 63 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 24 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 15 b9 5e}
0206h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c6398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 63 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 24 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 15 b9 5e}
0245h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c63f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 63 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 24 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 15 b9 5e}
0284h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c63d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 63 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 24 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 15 b9 5e}
02c3h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c6368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 63 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 23 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 14 b9 5e}
0302h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c6388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 63 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 23 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 14 b9 5e}
0341h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c6378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 63 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 23 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 14 b9 5e}
0380h mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c63e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 63 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 23 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 14 b9 5e}
03bch mov rcx,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c6358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 63 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89dae30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ae 9d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 22 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 14 b9 5e}
03f8h mov rax,7ff7c761e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c6408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 64 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n256,TernaryBitLogicKind~8u)[1258] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 70 1d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 0e b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 4d 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 31 1d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 0e b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 4d 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 f2 1c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 0e b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 4d 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 b3 1c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 0d b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 4d 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 74 1c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 0d b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 4c 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 35 1c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 0d b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 4c 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 f6 1b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 0d b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 4c 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 b7 1b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 0c b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 4c 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 78 1b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 0c b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 4c 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 39 1b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 0c b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 4c 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 fa 1a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 0c b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 4c 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 bb 1a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 0b b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 4c 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 7c 1a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 0b b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 4b 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 3d 1a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 0b b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 4b 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 fe 19 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 0b b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 4b 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 bf 19 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 0a b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 4b 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 80 19 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 0a b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 4b 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 41 19 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 0a b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 4b 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 02 19 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 0a b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 4b 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 b7 c2 c8 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 1d b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 0e b9 5e}
004fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d4d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4d 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 1d b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 0e b9 5e}
008eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d4d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4d 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 1c b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 0e b9 5e}
00cdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 1c b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 0d b9 5e}
010ch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d4d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4d 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 1c b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 0d b9 5e}
014bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d4cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 4c 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 1c b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 0d b9 5e}
018ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d4cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 4c 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 1b b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 0d b9 5e}
01c9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d4cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 4c 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 1b b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 0c b9 5e}
0208h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d4c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 4c 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 1b b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 0c b9 5e}
0247h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d4c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4c 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 1b b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 0c b9 5e}
0286h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d4c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4c 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 1a b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 0c b9 5e}
02c5h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d4c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4c 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 1a b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 0b b9 5e}
0304h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d4c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4c 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 1a b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 0b b9 5e}
0343h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d4bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 4b 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 1a b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 0b b9 5e}
0382h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d4bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 4b 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 19 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 0b b9 5e}
03c1h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d4bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 4b 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 19 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 0a b9 5e}
0400h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d4b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 4b 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 19 b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 0a b9 5e}
043fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d4b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4b 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 19 b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 0a b9 5e}
047eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d4b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4b 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 19 b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 0a b9 5e}
04bdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d4b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4b 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c2b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c2 c8 f7 7f 00 00}
04e8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_g[8i](n256,TernaryBitLogicKind~8u)[250] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 bb c2 c8 f7 7f 00 00 e8 80 11 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 02 b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 68 bb c2 c8 f7 7f 00 00 e8 41 11 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 02 b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 68 bb c2 c8 f7 7f 00 00 e8 02 11 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 02 b9 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 68 bb c2 c8 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c8c2bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c2 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 11 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 02 b9 5e}
004fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d5728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c2bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c2 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 11 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 02 b9 5e}
008eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d5718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 57 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c2bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c2 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 11 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 02 b9 5e}
00cdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d5708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 57 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c2bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c2 c8 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_g[16u](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 90 09 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 fa b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 51 09 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 fa b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 12 09 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 fa b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 d3 08 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 fa b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 94 08 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 f9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 55 08 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 f9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 16 08 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 f9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 d7 07 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 f9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 98 07 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 f8 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 59 07 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a f8 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 1a 07 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b f8 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 db 06 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c f8 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 9c 06 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd f7 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 5d 06 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e f7 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 58 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 1e 06 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f f7 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 df 05 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 f7 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 a0 05 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 f6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 61 05 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 f6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 22 05 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 f6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 e3 04 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 f6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 a4 04 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 f5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 65 04 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 f5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 26 04 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 f5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 e7 03 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 f5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 57 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 a8 03 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 f4 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 57 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 6c 03 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d f4 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 57 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 bd c2 c8 f7 7f 00 00 e8 30 03 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 f4 b8 5e 48 b8 70 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 57 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 09 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fa b8 5e}
004fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d58d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 58 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 09 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 fa b8 5e}
008eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d58c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 58 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 09 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 fa b8 5e}
00cdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d58b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 58 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 08 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 fa b8 5e}
010ch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d58a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 58 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 08 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f9 b8 5e}
014bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d5898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 58 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 08 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f9 b8 5e}
018ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d5888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 58 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 08 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f9 b8 5e}
01c9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d5878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 58 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 07 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 f9 b8 5e}
0208h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d5868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 58 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 07 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f8 b8 5e}
0247h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d5858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 58 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 07 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f8 b8 5e}
0286h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d5848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 58 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 07 b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f8 b8 5e}
02c5h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d5838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 58 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 06 b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c f8 b8 5e}
0304h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d5828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 58 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 06 b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f7 b8 5e}
0343h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d5818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 58 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 06 b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e f7 b8 5e}
0382h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d5808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 58 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 06 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f7 b8 5e}
03c1h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d57f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 57 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 05 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 f7 b8 5e}
0400h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d57e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 57 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 05 b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f6 b8 5e}
043fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d57d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 05 b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f6 b8 5e}
047eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d57c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 57 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 05 b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f6 b8 5e}
04bdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d57b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 57 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 04 b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f6 b8 5e}
04fch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d57a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 57 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 04 b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f5 b8 5e}
053bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d5798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 57 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 04 b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f5 b8 5e}
057ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d5788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 57 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 04 b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f5 b8 5e}
05b9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d5778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 57 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 03 b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f5 b8 5e}
05f8h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d5768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 57 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 03 b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f4 b8 5e}
0637h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d5758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 57 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 03 b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f4 b8 5e}
0673h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d5748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 57 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c2bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c2 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 03 b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f4 b8 5e}
06afh mov rax,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 57 6d c8 f7 7f 00 00}
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
; lookup_g[16i](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 a0 01 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 f2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 61 01 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 f2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 22 01 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 f2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 e3 00 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 f2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 a4 00 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 f1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 65 00 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 f1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 26 00 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 f1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 e7 ff b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 f1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 a8 ff b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 f0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 69 ff b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a f0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 2a ff b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b f0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 eb fe b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c f0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 ac fe b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd ef b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 6d fe b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e ef b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 2e fe b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f ef b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 ef fd b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 ef b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 b0 fd b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 ee b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 71 fd b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 ee b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 32 fd b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 ee b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 f3 fc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 ee b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 b4 fc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ed b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 75 fc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 ed b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 36 fc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 ed b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 f7 fb b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ed b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 b8 fb b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 ec b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 59 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 7c fb b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad ec b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 58 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 c0 c2 c8 f7 7f 00 00 e8 40 fb b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 ec b8 5e 48 b8 70 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 58 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 01 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f2 b8 5e}
004fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d5a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5a 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 01 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f2 b8 5e}
008eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d5a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 01 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f2 b8 5e}
00cdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 00 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f2 b8 5e}
010ch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d5a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5a 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 00 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f1 b8 5e}
014bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d5a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5a 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 00 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f1 b8 5e}
018ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d5a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5a 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 00 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f1 b8 5e}
01c9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d5a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5a 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 ff b8 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f1 b8 5e}
0208h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d5a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5a 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 ff b8 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f0 b8 5e}
0247h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d5a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5a 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ff b8 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f0 b8 5e}
0286h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d59f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 59 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a ff b8 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f0 b8 5e}
02c5h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d59e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 59 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb fe b8 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c f0 b8 5e}
0304h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d59d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 59 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac fe b8 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ef b8 5e}
0343h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d fe b8 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ef b8 5e}
0382h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d59b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 59 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e fe b8 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f ef b8 5e}
03c1h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d59a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 59 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef fd b8 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 ef b8 5e}
0400h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d5998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 59 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 fd b8 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ee b8 5e}
043fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d5988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 59 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 fd b8 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 ee b8 5e}
047eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d5978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 59 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 fd b8 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 ee b8 5e}
04bdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d5968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 59 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fc b8 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ee b8 5e}
04fch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d5958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 59 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 fc b8 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ed b8 5e}
053bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d5948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 59 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 fc b8 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ed b8 5e}
057ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d5938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 59 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fc b8 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ed b8 5e}
05b9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d5928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 59 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fb b8 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ed b8 5e}
05f8h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d5918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 59 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fb b8 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ec b8 5e}
0637h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d5908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 59 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c fb b8 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad ec b8 5e}
0673h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d58f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 58 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c2c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c2 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 fb b8 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 ec b8 5e}
06afh mov rax,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d58e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 58 6d c8 f7 7f 00 00}
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
; lookup_g[32u](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 b0 f5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 e6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 71 f5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 e6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 32 f5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 e6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 f3 f4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 e6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 b4 f4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 e5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 75 f4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 e5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 36 f4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 e5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 f7 f3 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 e5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 b8 f3 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 e4 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 79 f3 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa e4 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 3a f3 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b e4 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 fb f2 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c e4 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 bc f2 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed e3 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 7d f2 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae e3 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 3e f2 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f e3 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 ff f1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 e3 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 c0 f1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 e2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 73 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 81 f1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 e2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 72 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 42 f1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 e2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 72 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 03 f1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 e2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 72 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 c4 f0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 e1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 72 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 85 f0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 e1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 72 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 46 f0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 e1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 07 f0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 e1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 c8 ef b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 e0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 5a 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 8c ef b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bd e0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 5a 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 c2 c2 c8 f7 7f 00 00 e8 50 ef b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 e0 b8 5e 48 b8 70 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 98 5a 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 f5 b8 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 e6 b8 5e}
004fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d7408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 74 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f5 b8 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 e6 b8 5e}
008eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d73f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 73 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f5 b8 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 e6 b8 5e}
00cdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d73e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 73 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f4 b8 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 e6 b8 5e}
010ch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d73d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 73 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f4 b8 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 e5 b8 5e}
014bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d73c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 73 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f4 b8 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 e5 b8 5e}
018ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d73b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 73 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f4 b8 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 e5 b8 5e}
01c9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d73a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 73 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f3 b8 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 e5 b8 5e}
0208h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d7398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 73 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f3 b8 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 e4 b8 5e}
0247h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d7388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 73 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f3 b8 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa e4 b8 5e}
0286h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d7378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 73 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f3 b8 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e4 b8 5e}
02c5h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d7368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 73 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f2 b8 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c e4 b8 5e}
0304h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d7358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 73 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc f2 b8 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed e3 b8 5e}
0343h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d7348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 73 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f2 b8 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae e3 b8 5e}
0382h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d7338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 73 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f2 b8 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f e3 b8 5e}
03c1h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d7328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 73 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f1 b8 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 e3 b8 5e}
0400h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d7318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 73 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f1 b8 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e2 b8 5e}
043fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d7308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 73 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f1 b8 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 e2 b8 5e}
047eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d72f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 72 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 f1 b8 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 e2 b8 5e}
04bdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d72e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 72 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f1 b8 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e2 b8 5e}
04fch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d72d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 72 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 f0 b8 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e1 b8 5e}
053bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d72c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 72 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f0 b8 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 e1 b8 5e}
057ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d72b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 72 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f0 b8 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e1 b8 5e}
05b9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d5ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5a 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f0 b8 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 e1 b8 5e}
05f8h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d5ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5a 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 ef b8 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e0 b8 5e}
0637h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d5ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5a 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c ef b8 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd e0 b8 5e}
0673h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d5aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5a 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c2c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c2 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 ef b8 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 e0 b8 5e}
06afh mov rax,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d5a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 5a 6d c8 f7 7f 00 00}
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
; lookup_g[32i](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 c0 ed b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 de b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 81 ed b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 de b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 42 ed b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 de b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 03 ed b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 de b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 c4 ec b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 dd b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 85 ec b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 dd b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 46 ec b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 dd b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 07 ec b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 dd b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 c8 eb b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 dc b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 89 eb b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba dc b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 4a eb b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b dc b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 0b eb b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c dc b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 cc ea b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd db b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 8d ea b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be db b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 4e ea b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f db b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 0f ea b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 db b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 d0 e9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 db b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 91 e9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 da b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 52 e9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 da b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 13 e9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 da b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 d4 e8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 da b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 95 e8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 d9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 56 e8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 d9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 17 e8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 d9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 74 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 d8 e7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 d9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 74 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 9c e7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd d8 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 74 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 c5 c2 c8 f7 7f 00 00 e8 60 e7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 d8 b8 5e 48 b8 70 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 18 74 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 ed b8 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 de b8 5e}
004fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d75b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 75 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 ed b8 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 de b8 5e}
008eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d75a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 75 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 ed b8 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 de b8 5e}
00cdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d7598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 75 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ed b8 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 de b8 5e}
010ch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d7588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 75 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 ec b8 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 dd b8 5e}
014bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d7578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 75 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 ec b8 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 dd b8 5e}
018ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d7568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 75 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 ec b8 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 dd b8 5e}
01c9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d7558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 75 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ec b8 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 dd b8 5e}
0208h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d7548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 eb b8 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 dc b8 5e}
0247h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d7538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 75 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 eb b8 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba dc b8 5e}
0286h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d7528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 75 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a eb b8 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b dc b8 5e}
02c5h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b eb b8 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c dc b8 5e}
0304h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d7508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 75 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ea b8 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd db b8 5e}
0343h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d74f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 74 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ea b8 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be db b8 5e}
0382h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d74e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 74 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ea b8 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f db b8 5e}
03c1h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d74d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 74 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ea b8 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 db b8 5e}
0400h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d74c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 74 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 e9 b8 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 db b8 5e}
043fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d74b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 74 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e9 b8 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 da b8 5e}
047eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d74a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 74 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 e9 b8 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 da b8 5e}
04bdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d7498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 74 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e9 b8 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 da b8 5e}
04fch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d7488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 74 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e8 b8 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 da b8 5e}
053bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d7478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 74 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e8 b8 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 d9 b8 5e}
057ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d7468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 74 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 e8 b8 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 d9 b8 5e}
05b9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d7458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 74 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e8 b8 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 d9 b8 5e}
05f8h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d7448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 74 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e7 b8 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d9 b8 5e}
0637h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d7438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 74 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c e7 b8 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d8 b8 5e}
0673h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d7428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 74 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c2c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c2 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 e7 b8 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 d8 b8 5e}
06afh mov rax,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d7418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 74 6d c8 f7 7f 00 00}
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
; lookup_g[64u](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 d0 e1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 d3 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 91 e1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 d2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 52 e1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 d2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 13 e1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 d2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 d4 e0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 d2 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 95 e0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 d1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 86 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 56 e0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 d1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 86 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 17 e0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 d1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 86 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 d8 df b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 d1 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 86 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 99 df b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca d0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 86 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 5a df b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b d0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 86 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 1b df b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c d0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 86 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 dc de b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d d0 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 9d de b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce cf b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 5e de b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f cf b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 1f de b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 cf b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 e0 dd b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 cf b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 a1 dd b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 ce b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 62 dd b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 ce b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 23 dd b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 ce b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 e4 dc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 ce b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 a5 dc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 cd b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 66 dc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 cd b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 76 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 27 dc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 cd b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 75 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 e8 db b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 cd b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 75 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 ac db b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd cc b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 75 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 c7 c2 c8 f7 7f 00 00 e8 70 db b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 cc b8 5e 48 b8 70 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 75 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 e1 b8 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 d3 b8 5e}
004fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d8748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 87 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e1 b8 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 d2 b8 5e}
008eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d8738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 e1 b8 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 d2 b8 5e}
00cdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d8728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 87 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e1 b8 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 d2 b8 5e}
010ch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d8718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 87 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e0 b8 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 d2 b8 5e}
014bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d8708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 87 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e0 b8 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 d1 b8 5e}
018ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d86f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 86 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 e0 b8 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 d1 b8 5e}
01c9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d86e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 86 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e0 b8 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 d1 b8 5e}
0208h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d86d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 86 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 df b8 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d1 b8 5e}
0247h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d86c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 86 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 df b8 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca d0 b8 5e}
0286h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d86b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 86 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a df b8 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b d0 b8 5e}
02c5h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d86a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 86 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b df b8 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d0 b8 5e}
0304h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d8698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 86 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc de b8 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d d0 b8 5e}
0343h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d76a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 76 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d de b8 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce cf b8 5e}
0382h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d7698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 76 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e de b8 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f cf b8 5e}
03c1h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d7688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f de b8 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 cf b8 5e}
0400h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d7678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 76 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 dd b8 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 cf b8 5e}
043fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d7668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 76 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 dd b8 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ce b8 5e}
047eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d7658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 76 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 dd b8 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 ce b8 5e}
04bdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d7648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 76 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 dd b8 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 ce b8 5e}
04fch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d7638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 76 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 dc b8 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 ce b8 5e}
053bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d7628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 76 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 dc b8 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 cd b8 5e}
057ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d7618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 76 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 dc b8 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 cd b8 5e}
05b9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d7608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 76 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 dc b8 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 cd b8 5e}
05f8h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d75f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 75 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 db b8 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 cd b8 5e}
0637h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d75e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 75 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac db b8 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd cc b8 5e}
0673h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d75d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 75 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c2c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c2 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 db b8 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 cc b8 5e}
06afh mov rax,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d75c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 75 6d c8 f7 7f 00 00}
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
; lookup_g[64i](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 ca c2 c8 f7 7f 00 00 e8 e0 d9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 cb b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 a1 d9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 ca b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 62 d9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 ca b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 23 d9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 ca b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 e4 d8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 ca b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 a5 d8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 c9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 66 d8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 c9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 27 d8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 c9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 e8 d7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 c9 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 a9 d7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da c8 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 6a d7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b c8 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 2b d7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c c8 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 ec d6 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d c8 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 ad d6 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de c7 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 6e d6 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f c7 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 2f d6 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 c7 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 88 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 f0 d5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 c7 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 b1 d5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 c6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 72 d5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 c6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 33 d5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 c6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 f4 d4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 c6 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 b5 d4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 c5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 76 d4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 c5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 37 d4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 c5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 87 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 ca c2 c8 f7 7f 00 00 e8 f8 d3 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 c5 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 87 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 ca c2 c8 f7 7f 00 00 e8 bc d3 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed c4 b8 5e 48 b9 70 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 87 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 ca c2 c8 f7 7f 00 00 e8 80 d3 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 c4 b8 5e 48 b8 70 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 58 87 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 d9 b8 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 cb b8 5e}
004fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d88f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 88 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 d9 b8 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ca b8 5e}
008eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d88e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 88 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 d9 b8 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 ca b8 5e}
00cdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d88d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 88 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 d9 b8 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 ca b8 5e}
010ch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d88c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 88 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 d8 b8 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 ca b8 5e}
014bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d88b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 88 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 d8 b8 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 c9 b8 5e}
018ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d88a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 88 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 d8 b8 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 c9 b8 5e}
01c9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d8898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 88 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 d8 b8 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 c9 b8 5e}
0208h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d8888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 88 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 d7 b8 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 c9 b8 5e}
0247h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d8878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 88 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 d7 b8 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c8 b8 5e}
0286h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d8868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 88 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a d7 b8 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c8 b8 5e}
02c5h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d8858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 88 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b d7 b8 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c8 b8 5e}
0304h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d8848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 88 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec d6 b8 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c8 b8 5e}
0343h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d8838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 88 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad d6 b8 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de c7 b8 5e}
0382h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d8828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 88 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e d6 b8 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c7 b8 5e}
03c1h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d8818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 88 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f d6 b8 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 c7 b8 5e}
0400h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d8808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 88 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 d5 b8 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 c7 b8 5e}
043fh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d87f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 87 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 d5 b8 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c6 b8 5e}
047eh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d87e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 87 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 d5 b8 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c6 b8 5e}
04bdh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 d5 b8 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c6 b8 5e}
04fch mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d87c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 87 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 d4 b8 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c6 b8 5e}
053bh mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d87b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 87 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 d4 b8 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 c5 b8 5e}
057ah mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d87a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 87 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 d4 b8 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 c5 b8 5e}
05b9h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d8798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 87 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 d4 b8 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 c5 b8 5e}
05f8h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d8788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 87 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 d3 b8 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c5 b8 5e}
0637h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d8778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 87 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc d3 b8 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed c4 b8 5e}
0673h mov rcx,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d8768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 87 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c2ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c2 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 d3 b8 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c4 b8 5e}
06afh mov rax,7ff7c761ec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d8758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 87 6d c8 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
