------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 b0 7b ce c6 f7 7f 00 00 e8 18 8c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 7d ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 1b 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce7bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7b ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 8c ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 7d ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f1b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1b 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 e0 aa ce c6 f7 7f 00 00 e8 d8 8a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 7c ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 00 1c 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ceaae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 aa ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 8a ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 7c ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f1c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1c 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ushort>> lookup<ushort>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 60 7d ce c6 f7 7f 00 00 e8 98 89 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 7a ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 37 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce7d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7d ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 89 ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 7a ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f3718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 37 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<short>> lookup<short>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 00 89 ce c6 f7 7f 00 00 e8 58 88 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 79 ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 37 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce8900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 89 ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 88 ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 79 ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f3768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 37 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<uint>> lookup<uint>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 10 7f ce c6 f7 7f 00 00 e8 18 87 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 78 ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 37 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce7f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7f ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 87 ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 78 ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f37b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 37 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<int>> lookup<int>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 b0 8a ce c6 f7 7f 00 00 e8 d8 85 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 77 ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 38 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce8ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8a ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 85 ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 77 ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f3808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 38 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ulong>> lookup<ulong>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 10 ea cc c6 f7 7f 00 00 e8 98 84 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 75 ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 38 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ccea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea cc c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 84 ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 75 ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f3858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 38 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<long>> lookup<long>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 90 ac ce c6 f7 7f 00 00 e8 58 83 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 74 ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 38 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ceac90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ac ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 83 ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 74 ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f38a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 38 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<byte>> lookup<byte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 70 82 ce c6 f7 7f 00 00 e8 18 82 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 73 ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 39 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce8270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 82 ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 82 ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 73 ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f3998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 39 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 40 ae ce c6 f7 7f 00 00 e8 d8 80 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 72 ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 3a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ceae40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ae ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 80 ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 72 ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f3a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 3a 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ushort>> lookup<ushort>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 20 84 ce c6 f7 7f 00 00 e8 98 7f ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 70 ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 88 3a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce8420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 7f ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 70 ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f3a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 3a 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<short>> lookup<short>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 60 8c ce c6 f7 7f 00 00 e8 58 7e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 6f ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 3a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce8c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 7e ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 6f ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f3ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 3a 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<uint>> lookup<uint>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 d0 85 ce c6 f7 7f 00 00 e8 18 7d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 6e ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 47 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce85d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 85 ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 7d ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 6e ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f47d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 47 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<int>> lookup<int>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 10 8e ce c6 f7 7f 00 00 e8 d8 7b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 6d ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 48 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce8e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8e ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 7b ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 6d ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f4828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 48 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ulong>> lookup<ulong>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 c0 80 ce c6 f7 7f 00 00 e8 98 7a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 6b ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 48 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6ce80c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 80 ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 7a ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 6b ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f4878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 48 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<long>> lookup<long>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 10 cb ce c6 f7 7f 00 00 e8 58 79 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 6a ca 5e 48 b8 c0 de 25 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 48 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c6cecb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 cb ce c6 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 79 ca 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 6a ca 5e}
0037h mov rax,7ff7c625dec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 de 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c71f48c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 48 1f c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 0d 50 c7 f7 7f 00 00 e8 f1 73 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 65 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 49 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 73 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 65 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f49d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 49 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 10 50 c7 f7 7f 00 00 e8 41 72 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 63 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 4a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 72 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 63 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f4a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 4a 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 12 50 c7 f7 7f 00 00 e8 91 70 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 61 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 4a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 70 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 61 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f4a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 4a 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 14 50 c7 f7 7f 00 00 e8 e1 6e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 60 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 4a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 6e ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 60 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f4ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 4a 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 16 50 c7 f7 7f 00 00 e8 31 6d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 5e ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 4b 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 6d ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 5e ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f4b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 4b 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 18 50 c7 f7 7f 00 00 e8 81 6b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 5c ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 4b 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 6b ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 5c ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f4b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 4b 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 d1 69 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 5b ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 10 5a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 69 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 5b ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f5a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 5a 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 1d 50 c7 f7 7f 00 00 e8 21 68 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 59 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 5a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 68 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 59 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f5ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 5a 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 23 50 c7 f7 7f 00 00 e8 71 66 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 57 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 00 5d 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 66 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 57 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f5d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 5d 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[346] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 26 50 c7 f7 7f 00 00 e8 c1 64 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 55 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 80 5d 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3 48 b9 b8 26 50 c7 f7 7f 00 00 e8 7c 64 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 55 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 70 5d 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3 48 b9 b8 26 50 c7 f7 7f 00 00 e8 37 64 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 55 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 5d 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 f2 63 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 dc 63 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 c5 fc dc 5e 48 8b d8 48 b9 68 6f 35 c6 f7 7f 00 00 e8 f3 e6 c4 5e 48 8b c8 e8 db c3 78 ff 8b c8 e8 34 c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 64 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 55 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f5d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 5d 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
007fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 64 ca 5e}
0084h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0087h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
008bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 55 ca 5e}
0093h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
009dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00a1h mov rax,7ff7c71f5d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 5d 1f c7 f7 7f 00 00}
00abh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00afh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00b2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00b6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b9h ret                                     ; RET || C3 || encoded[1]{c3}
00bah mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
00c4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 64 ca 5e}
00c9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00cch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00d0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00d3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 55 ca 5e}
00d8h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
00e2h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00e6h mov rax,7ff7c71f5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 5d 1f c7 f7 7f 00 00}
00f0h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00f4h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00f7h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00fbh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00fch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00fdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00feh ret                                     ; RET || C3 || encoded[1]{c3}
00ffh mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
0109h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 63 ca 5e}
010eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0111h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0115h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
011fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 63 ca 5e}
0124h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0127h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
012ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0136h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 fc dc 5e}
013bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
013eh mov rcx,7ff7c6356f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 35 c6 f7 7f 00 00}
0148h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e6 c4 5e}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db c3 78 ff}
0155h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0157h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 34 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 28 50 c7 f7 7f 00 00 e8 11 63 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 54 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 5d 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 63 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 54 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f5dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 5d 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 61 61 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 52 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 00 5e 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 61 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 52 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f5e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 5e 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 b1 5f ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 50 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 6a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 5f ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 50 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f6a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 6a 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 01 5e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 4f ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 6a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 5e ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 4f ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f6a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 6a 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 31 50 c7 f7 7f 00 00 e8 51 58 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 49 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 6a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 58 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 49 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f6aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 6a 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 33 50 c7 f7 7f 00 00 e8 a1 56 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 47 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 6b 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0012h ja near ptr 00ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e7 00 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+15fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5f 01 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 56 ca 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 47 ca 5e}
004eh mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c71f6b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 6b 1f c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<byte>> lookup<byte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 20 39 50 c7 f7 7f 00 00 e8 eb 54 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 46 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 11 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7503920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 39 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 54 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 46 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7201148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 11 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<sbyte>> lookup<sbyte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 90 3e 50 c7 f7 7f 00 00 e8 eb 52 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 44 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 10 12 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7503e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 3e 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 52 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 44 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7201210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 12 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ushort>> lookup<ushort>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 20 42 50 c7 f7 7f 00 00 e8 eb 50 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 42 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 88 12 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7504220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 42 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 50 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 42 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7201288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 12 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<short>> lookup<short>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 b0 45 50 c7 f7 7f 00 00 e8 eb 4e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 40 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 00 13 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c75045b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 45 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 4e ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 40 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7201300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 13 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<uint>> lookup<uint>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 40 49 50 c7 f7 7f 00 00 e8 eb 4c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 3e ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 13 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7504940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 49 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 4c ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 3e ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7201378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 13 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<int>> lookup<int>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d0 4c 50 c7 f7 7f 00 00 e8 eb 46 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 38 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 13 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7504cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 4c 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 46 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 38 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c72013f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 13 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ulong>> lookup<ulong>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 60 50 50 c7 f7 7f 00 00 e8 eb 44 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 36 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 21 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7505060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 50 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 44 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 36 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c72021d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 21 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<long>> lookup<long>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 f0 53 50 c7 f7 7f 00 00 e8 eb 42 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 34 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 22 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c75053f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 53 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 42 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 34 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7202248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 22 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<byte>> lookup<byte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 98 5b 50 c7 f7 7f 00 00 e8 eb 40 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 32 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 23 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7505b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5b 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 40 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 32 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7202368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 23 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<sbyte>> lookup<sbyte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 08 61 50 c7 f7 7f 00 00 e8 eb 3e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 30 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 30 24 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7506108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 61 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 3e ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 30 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7202430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 24 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ushort>> lookup<ushort>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 98 64 50 c7 f7 7f 00 00 e8 eb 3c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 2e ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 24 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7506498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 64 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 3c ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 2e ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c72024a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 24 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<short>> lookup<short>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 28 68 50 c7 f7 7f 00 00 e8 eb 3a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 2c ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 20 25 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7506828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 68 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 3a ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 2c ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7202520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 25 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 b8 6b 50 c7 f7 7f 00 00 e8 eb 34 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 26 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 33 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7506bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6b 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 34 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 26 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c72033a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 33 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<int>> lookup<int>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 48 6f 50 c7 f7 7f 00 00 e8 eb 32 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 24 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 34 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7506f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6f 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 32 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 24 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7203418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 34 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ulong>> lookup<ulong>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d8 72 50 c7 f7 7f 00 00 e8 eb 30 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 22 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 90 34 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c75072d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 72 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 30 ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 22 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7203490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 34 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<long>> lookup<long>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 68 76 50 c7 f7 7f 00 00 e8 eb 2e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 20 ca 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 35 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0012h ja short 002ch                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0014h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0016h lea rax,[rip+1b3h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b3 01 00 00}
001dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0020h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0027h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002ch cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0030h jne near ptr 014ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0036h mov rcx,7ff7c7507668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 76 50 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 2e ca 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 20 ca 5e}
0054h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7203508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 35 20 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 0d 50 c7 f7 7f 00 00 e8 f3 2c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 1e ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 6c 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 b4 2c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 1d ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 73 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 75 2c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 1d ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 6d 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 36 2c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 1d ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 6c 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 f7 2b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 1d ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 6d 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 b8 2b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 1c ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 6c 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 79 2b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 1c ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 6d 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 3a 2b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 1c ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 6c 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 fb 2a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 1c ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 6d 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 bc 2a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 1b ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 6d 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 7d 2a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 1b ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 6c 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 3e 2a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 1b ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 6c 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 ff 29 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 1b ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 6c 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 0d 50 c7 f7 7f 00 00 e8 c0 29 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 1a ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 6d 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 0d 50 c7 f7 7f 00 00 e8 84 29 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 1a ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 6c 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 0d 50 c7 f7 7f 00 00 e8 48 29 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 1a ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 6d 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 2c ca 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 1e ca 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f6c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 6c 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 2c ca 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 1d ca 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f7388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 73 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 2c ca 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 1d ca 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f6dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 6d 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 2c ca 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 1d ca 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 2b ca 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 1d ca 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f6d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 6d 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 2b ca 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 1c ca 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f6cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 6c 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 2b ca 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 1c ca 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f6d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6d 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 2b ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 1c ca 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f6cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 6c 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 2a ca 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 1c ca 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f6d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 6d 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 2a ca 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 1b ca 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f6d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 6d 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 2a ca 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 1b ca 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f6c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 6c 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 2a ca 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 1b ca 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f6cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6c 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 29 ca 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 1b ca 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f6c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 6c 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 29 ca 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1a ca 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f6d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 6d 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 29 ca 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 1a ca 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f6c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 6c 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7500d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 29 ca 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 1a ca 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f6db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 6d 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 10 50 c7 f7 7f 00 00 e8 f3 27 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 19 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 74 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 b4 27 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 18 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 75 27 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 18 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 36 27 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 18 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 74 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 f7 26 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 18 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 b8 26 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 17 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 79 26 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 17 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 3a 26 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 17 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 74 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 fb 25 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 17 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 bc 25 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 16 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 7d 25 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 16 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 74 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 3e 25 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 16 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 74 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 ff 24 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 16 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 74 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 10 50 c7 f7 7f 00 00 e8 c0 24 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 15 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 75 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 10 50 c7 f7 7f 00 00 e8 84 24 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 15 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 74 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 10 50 c7 f7 7f 00 00 e8 48 24 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 15 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 75 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 27 ca 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 19 ca 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f7498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 74 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 27 ca 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 18 ca 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f7588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 75 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 27 ca 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 18 ca 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f7578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 75 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 27 ca 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 18 ca 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f74a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 74 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 26 ca 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 18 ca 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 26 ca 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 17 ca 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f7508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 75 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 26 ca 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 17 ca 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f7528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 75 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 26 ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 17 ca 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f74f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 74 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 25 ca 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 17 ca 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f7558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 75 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 25 ca 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 16 ca 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f7538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 75 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 25 ca 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 16 ca 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f74c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 74 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 25 ca 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 16 ca 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f74e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 74 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 24 ca 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 16 ca 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f74d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 74 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 24 ca 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 15 ca 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f7548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 24 ca 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 15 ca 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f74b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 74 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c75010a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 10 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 24 ca 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 15 ca 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f7568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 75 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 12 50 c7 f7 7f 00 00 e8 f3 22 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 14 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 b4 22 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 13 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 75 22 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 13 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 36 22 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 13 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 f7 21 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 13 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 b8 21 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 12 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 79 21 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 12 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 3a 21 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 12 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 fb 20 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 12 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 bc 20 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 11 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 7d 20 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 11 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 3e 20 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 11 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 ff 1f ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 11 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 75 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 12 50 c7 f7 7f 00 00 e8 c0 1f ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 10 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 76 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 12 50 c7 f7 7f 00 00 e8 84 1f ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 10 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 75 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 12 50 c7 f7 7f 00 00 e8 48 1f ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 10 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 76 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 22 ca 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 14 ca 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f75a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 75 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 22 ca 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 13 ca 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f7698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 76 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 22 ca 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 13 ca 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f7688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 22 ca 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 13 ca 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f75b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 75 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 21 ca 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 13 ca 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f7628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 76 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 21 ca 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 12 ca 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f7618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 76 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 21 ca 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 12 ca 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f7638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 76 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 21 ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 12 ca 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f7608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 76 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 20 ca 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 12 ca 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f7668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 76 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 20 ca 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 11 ca 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f7648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 76 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 20 ca 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 11 ca 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f75d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 75 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 20 ca 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 11 ca 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f75f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 75 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 1f ca 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 11 ca 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f75e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 75 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 1f ca 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 10 ca 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f7658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 76 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 1f ca 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 10 ca 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f75c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 75 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c75012b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 1f ca 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 10 ca 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f7678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 76 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 14 50 c7 f7 7f 00 00 e8 f3 1d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 0f ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 b4 1d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 0e ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 75 1d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 0e ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 36 1d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 0e ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 f7 1c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 0e ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 77 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 b8 1c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 0d ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 77 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 79 1c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 0d ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 77 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 3a 1c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 0d ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 77 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 fb 1b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 0d ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 77 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 bc 1b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 0c ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 77 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 7d 1b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 0c ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 3e 1b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 0c ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 77 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 ff 1a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 0c ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 76 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 14 50 c7 f7 7f 00 00 e8 c0 1a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 0b ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 77 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 14 50 c7 f7 7f 00 00 e8 84 1a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 0b ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 76 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 14 50 c7 f7 7f 00 00 e8 48 1a ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 0b ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 80 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 1d ca 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 0f ca 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f76b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 76 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 1d ca 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 0e ca 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f8048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 80 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 1d ca 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 0e ca 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f8038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 1d ca 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 0e ca 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f76c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 76 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 1c ca 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 0e ca 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 1c ca 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 0d ca 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f7728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 77 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 1c ca 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 0d ca 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f7748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 77 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 1c ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 0d ca 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f7718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 77 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 1b ca 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 0d ca 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f7778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 77 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 1b ca 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 0c ca 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f7758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 1b ca 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 0c ca 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f76e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 76 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 1b ca 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 0c ca 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f7708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 77 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 1a ca 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 0c ca 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f76f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 76 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 1a ca 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 0b ca 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f7768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 77 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 1a ca 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 0b ca 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f76d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 76 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c75014c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 1a ca 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 0b ca 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f8028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 80 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 16 50 c7 f7 7f 00 00 e8 f3 18 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 0a ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 b4 18 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 09 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 75 18 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 09 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 36 18 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 09 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 f7 17 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 09 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 b8 17 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 08 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 79 17 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 08 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 3a 17 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 08 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 fb 16 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 08 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 bc 16 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 07 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 7d 16 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 07 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 3e 16 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 07 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 ff 15 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 07 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 80 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 16 50 c7 f7 7f 00 00 e8 c0 15 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 06 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 81 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 16 50 c7 f7 7f 00 00 e8 84 15 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 06 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 80 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 16 50 c7 f7 7f 00 00 e8 48 15 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 06 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 81 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 18 ca 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 0a ca 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f8068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 80 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 18 ca 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 09 ca 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f8158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 81 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 18 ca 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 09 ca 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f8148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 81 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 18 ca 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 09 ca 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f8078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 80 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 17 ca 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 09 ca 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f80e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 80 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 17 ca 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 08 ca 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f80d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 80 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 17 ca 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 08 ca 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f80f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 80 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 17 ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 08 ca 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f80c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 80 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 16 ca 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 08 ca 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f8128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 81 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 16 ca 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 07 ca 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f8108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 81 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 16 ca 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 07 ca 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f8098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 80 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 16 ca 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 07 ca 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f80b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 80 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 15 ca 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 07 ca 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f80a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 80 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 15 ca 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 06 ca 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f8118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 81 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 15 ca 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 06 ca 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f8088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 80 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c75016d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 15 ca 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 06 ca 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f8138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 81 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 18 50 c7 f7 7f 00 00 e8 f3 13 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 05 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 b4 13 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 04 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 75 13 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 04 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 36 13 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 04 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 f7 12 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 04 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 b8 12 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 03 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 79 12 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 03 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 3a 12 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 03 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 fb 11 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 03 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 bc 11 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 02 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 7d 11 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 02 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 3e 11 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 02 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 ff 10 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 02 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 81 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 18 50 c7 f7 7f 00 00 e8 c0 10 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 01 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 82 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 18 50 c7 f7 7f 00 00 e8 84 10 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 01 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 81 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 18 50 c7 f7 7f 00 00 e8 48 10 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 01 ca 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 82 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 13 ca 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 05 ca 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 13 ca 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 04 ca 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f8268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 82 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 13 ca 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 04 ca 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f8258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 82 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 13 ca 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 04 ca 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f8188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 81 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 12 ca 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 04 ca 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f81f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 81 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 12 ca 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 03 ca 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f81e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 81 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 12 ca 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 03 ca 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f8208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 82 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 12 ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 03 ca 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f81d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 81 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 11 ca 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 03 ca 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f8238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 82 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 11 ca 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 02 ca 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f8218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 82 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 11 ca 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 02 ca 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f81a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 81 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 11 ca 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 02 ca 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f81c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 81 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 10 ca 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 02 ca 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f81b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 81 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 10 ca 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 01 ca 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f8228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 82 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 10 ca 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 01 ca 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f8198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 81 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c75018e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 10 ca 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 01 ca 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f8248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 82 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 f3 0e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 00 ca 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 b4 0e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ff c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 75 0e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 ff c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 36 0e ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 ff c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 f7 0d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ff c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 b8 0d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 fe c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 79 0d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa fe c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 3a 0d ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b fe c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 fb 0c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c fe c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 bc 0c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed fd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 7d 0c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae fd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 3e 0c ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f fd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 ff 0b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 fd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 82 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 c0 0b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 fc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 83 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 84 0b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 fc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 82 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 1a 50 c7 f7 7f 00 00 e8 48 0b ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 fc c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 83 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 0e ca 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 00 ca 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f8288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 82 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 0e ca 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ff c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f8378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 83 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 0e ca 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ff c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f8368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 83 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 0e ca 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ff c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f8298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 82 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 0d ca 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ff c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f8308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 83 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 0d ca 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 fe c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f82f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 82 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 0d ca 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fe c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f8318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 83 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 0d ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fe c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f82e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 82 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 0c ca 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c fe c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f8348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 83 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 0c ca 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed fd c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f8328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 83 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 0c ca 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fd c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f82b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 82 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 0c ca 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f fd c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f82d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 82 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 0b ca 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 fd c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f82c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 82 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 0b ca 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 fc c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f8338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 83 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 0b ca 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 fc c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f82a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7501af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1a 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 0b ca 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fc c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f8358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 83 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 00 1d 50 c7 f7 7f 00 00 e8 f3 05 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 f7 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 b4 05 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 f6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 90 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 75 05 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 f6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 8f 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 36 05 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 f6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 f7 04 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 f6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 84 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 b8 04 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 f5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 84 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 79 04 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa f5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 8f 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 3a 04 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b f5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 fb 03 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c f5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 8f 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 bc 03 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed f4 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 8f 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 7d 03 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae f4 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 3e 03 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f f4 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 ff 02 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 f4 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 83 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 1d 50 c7 f7 7f 00 00 e8 c0 02 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 f3 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 8f 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 1d 50 c7 f7 7f 00 00 e8 84 02 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 f3 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 83 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 1d 50 c7 f7 7f 00 00 e8 48 02 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 f3 c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 8f 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 05 ca 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f7 c9 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f8398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 83 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 05 ca 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f6 c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f9008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 90 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 05 ca 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f6 c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f8ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 8f 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 05 ca 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f6 c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f83a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 83 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 04 ca 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f6 c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f8418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 84 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 04 ca 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f5 c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f8408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 84 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 04 ca 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f5 c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f8fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 8f 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 04 ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f5 c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f83f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 83 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 03 ca 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f5 c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f8fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 8f 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 03 ca 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f4 c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f8fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8f 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 03 ca 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae f4 c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f83c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 83 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 03 ca 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f f4 c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f83e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 83 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 02 ca 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 f4 c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f83d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 83 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 02 ca 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f3 c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f8fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 8f 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 02 ca 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 f3 c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f83b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 83 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7501d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1d 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 02 ca 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f3 c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f8fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 8f 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 28 23 50 c7 f7 7f 00 00 e8 f3 00 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 f2 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 90 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 b4 00 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 f1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 92 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 75 00 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 f1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 92 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 36 00 ca 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 f1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 90 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 f7 ff c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 f1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 91 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 b8 ff c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 f0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 91 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 79 ff c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa f0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 91 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 3a ff c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b f0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 91 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 fb fe c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c f0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 92 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 bc fe c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed ef c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 91 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 7d fe c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae ef c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 91 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 3e fe c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f ef c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 91 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 ff fd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 ef c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 91 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 23 50 c7 f7 7f 00 00 e8 c0 fd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 ee c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 92 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 23 50 c7 f7 7f 00 00 e8 84 fd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 ee c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 90 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 23 50 c7 f7 7f 00 00 e8 48 fd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 ee c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 92 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 00 ca 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f2 c9 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f90b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 90 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 00 ca 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f1 c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f9298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 92 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 00 ca 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f1 c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f9278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 92 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 00 ca 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f1 c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f90d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 90 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 ff c9 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f1 c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f91b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 91 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 ff c9 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f0 c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f9198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 91 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 ff c9 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f0 c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f91d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 91 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a ff c9 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f0 c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f9178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 91 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fe c9 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f0 c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f9238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 92 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc fe c9 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ef c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f91f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 91 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d fe c9 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ef c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f9118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 91 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fe c9 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ef c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f9158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 91 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff fd c9 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 ef c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f9138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 91 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 fd c9 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 ee c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f9218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 92 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 fd c9 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 ee c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f90f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 90 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7502328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 fd c9 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 ee c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f9258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 92 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b8 26 50 c7 f7 7f 00 00 e8 f3 fb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 ed c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 93 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 b4 fb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ec c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 75 fb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 ec c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 36 fb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 ec c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 99 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 f7 fa c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ec c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 99 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 b8 fa c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 eb c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 99 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 79 fa c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa eb c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 99 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 3a fa c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b eb c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 99 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 fb f9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c eb c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 bc f9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed ea c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 99 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 7d f9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae ea c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 99 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 3e f9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f ea c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 99 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 ff f8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 ea c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 99 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 26 50 c7 f7 7f 00 00 e8 c0 f8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 e9 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 9a 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 26 50 c7 f7 7f 00 00 e8 84 f8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 e9 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 99 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 26 50 c7 f7 7f 00 00 e8 48 f8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 e9 c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 9a 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fb c9 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ed c9 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f9398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 93 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 fb c9 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ec c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f9a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 9a 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 fb c9 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ec c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f9a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9a 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fb c9 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ec c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f9968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 99 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fa c9 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ec c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f99d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 99 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fa c9 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 eb c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f99c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 99 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fa c9 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa eb c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f99e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 99 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fa c9 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b eb c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f99b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 99 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f9 c9 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c eb c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f9a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9a 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc f9 c9 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ea c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f99f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 99 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f9 c9 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ea c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f9988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 99 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f9 c9 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ea c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f99a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 99 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f8 c9 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 ea c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f9998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 99 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f8 c9 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e9 c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f9a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9a 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 f8 c9 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e9 c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f9978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 99 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c75026b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 26 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 f8 c9 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e9 c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f9a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 9a 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c8 28 50 c7 f7 7f 00 00 e8 f3 f6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 e8 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 b4 f6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 e7 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 75 f6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 e7 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 36 f6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 e7 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 f7 f5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 e7 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 b8 f5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 e6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 79 f5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa e6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 3a f5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b e6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 fb f4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c e6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 bc f4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed e5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 7d f4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae e5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 3e f4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f e5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 ff f3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 e5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 9a 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 28 50 c7 f7 7f 00 00 e8 c0 f3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 e4 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 9b 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 28 50 c7 f7 7f 00 00 e8 84 f3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 e4 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 9a 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 28 50 c7 f7 7f 00 00 e8 48 f3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 e4 c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 9b 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f6 c9 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 e8 c9 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f9a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9a 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f6 c9 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 e7 c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f9b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 9b 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f6 c9 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 e7 c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f9b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 9b 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f6 c9 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 e7 c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f9a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9a 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f5 c9 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 e7 c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f9ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 9a 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f5 c9 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 e6 c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f9ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9a 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f5 c9 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa e6 c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f9af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 9a 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f5 c9 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e6 c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f9ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 9a 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f4 c9 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c e6 c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f9b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9b 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc f4 c9 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed e5 c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f9b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9b 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f4 c9 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae e5 c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f9a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9a 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f4 c9 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f e5 c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f9ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 9a 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f3 c9 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 e5 c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f9aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9a 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f3 c9 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e4 c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f9b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9b 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 f3 c9 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e4 c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f9a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9a 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c75028c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 f3 c9 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e4 c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f9b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 9b 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 f3 f1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 e3 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 b4 f1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 e2 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 75 f1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 e2 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 36 f1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 e2 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 f7 f0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 e2 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 b8 f0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 e1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 79 f0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa e1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 3a f0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b e1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 fb ef c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c e1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 bc ef c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed e0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 7d ef c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae e0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 3e ef c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f e0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 ff ee c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 e0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 9b 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 c0 ee c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 df c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 9c 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 84 ee c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 df c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 9b 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 2a 50 c7 f7 7f 00 00 e8 48 ee c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 df c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 9c 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f1 c9 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 e3 c9 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f9b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9b 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f1 c9 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 e2 c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71f9c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9c 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f1 c9 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 e2 c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71f9c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 9c 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f1 c9 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 e2 c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f9b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9b 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f0 c9 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 e2 c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f9bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 9b 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f0 c9 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 e1 c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f9be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 9b 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f0 c9 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa e1 c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f9c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9c 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f0 c9 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e1 c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f9bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9b 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ef c9 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c e1 c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f9c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9c 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ef c9 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed e0 c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f9c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9c 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ef c9 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae e0 c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f9ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9b 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ef c9 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f e0 c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f9bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 9b 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ee c9 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 e0 c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f9bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 9b 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 ee c9 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 df c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f9c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9c 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 ee c9 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 df c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f9b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9b 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7502ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ee c9 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 df c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f9c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 9c 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 f3 ec c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 de c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 b4 ec c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 dd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 75 ec c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 dd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 36 ec c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 dd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 f7 eb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 dd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 9d 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 b8 eb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 dc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 79 eb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa dc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 9d 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 3a eb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b dc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 fb ea c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c dc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 9d 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 bc ea c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed db c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 9d 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 7d ea c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae db c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 3e ea c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f db c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 ff e9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 db c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 9c 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 c0 e9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 da c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 9d 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 84 e9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 da c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 9c 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 2c 50 c7 f7 7f 00 00 e8 48 e9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 da c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 9d 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ec c9 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 de c9 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71f9c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9c 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ec c9 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 dd c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71fa618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a6 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 ec c9 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 dd c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71fa608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a6 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 ec c9 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 dd c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71f9c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9c 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 eb c9 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 dd c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71f9d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9d 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 eb c9 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 dc c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71f9cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 9c 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 eb c9 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa dc c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71f9d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9d 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a eb c9 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b dc c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71f9ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 9c 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ea c9 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c dc c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71f9d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 9d 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ea c9 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed db c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71f9d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9d 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ea c9 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae db c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71f9cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 9c 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ea c9 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f db c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71f9cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9c 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff e9 c9 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 db c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71f9cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 9c 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 e9 c9 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 da c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71f9d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9d 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 e9 c9 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 da c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71f9ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9c 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7502ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 e9 c9 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 da c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71f9d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 9d 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 f3 e7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 d9 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 b4 e7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 d8 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 75 e7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 d8 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 36 e7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 d8 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 f7 e6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 d8 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 b8 e6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 d7 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 79 e6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa d7 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 3a e6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b d7 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 fb e5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c d7 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 bc e5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed d6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 7d e5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae d6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 3e e5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f d6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 ff e4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 d6 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 a6 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 c0 e4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 d5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 a6 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 84 e4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 d5 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 a6 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 2e 50 c7 f7 7f 00 00 e8 48 e4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 d5 c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 a7 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e7 c9 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d9 c9 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71fa638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a6 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e7 c9 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 d8 c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71fa728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a7 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 e7 c9 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 d8 c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71fa718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a7 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 e7 c9 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 d8 c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71fa648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a6 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 e6 c9 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 d8 c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71fa6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 a6 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 e6 c9 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d7 c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71fa6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a6 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e6 c9 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d7 c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71fa6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a6 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e6 c9 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b d7 c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71fa698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a6 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb e5 c9 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c d7 c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71fa6f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a6 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e5 c9 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d6 c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71fa6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a6 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e5 c9 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae d6 c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71fa668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a6 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e e5 c9 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f d6 c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71fa688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 a6 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff e4 c9 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 d6 c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71fa678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 e4 c9 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d5 c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71fa6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a6 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 e4 c9 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 d5 c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71fa658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a6 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7502ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2e 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 e4 c9 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 d5 c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71fa708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 a7 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 08 31 50 c7 f7 7f 00 00 e8 f3 e2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 d4 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 b4 e2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 d3 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 75 e2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 d3 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 36 e2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 d3 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 f7 e1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 d3 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 b8 e1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 d2 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 79 e1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa d2 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 3a e1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b d2 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 fb e0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c d2 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 bc e0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed d1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 7d e0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae d1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 3e e0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f d1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 ff df c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 d1 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 a7 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 31 50 c7 f7 7f 00 00 e8 c0 df c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 d0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 a7 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 31 50 c7 f7 7f 00 00 e8 84 df c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 d0 c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 a7 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 31 50 c7 f7 7f 00 00 e8 48 df c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 d0 c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 a8 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e2 c9 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d4 c9 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71fa748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a7 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e2 c9 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 d3 c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71fa838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a8 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 e2 c9 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 d3 c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71fa828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a8 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 e2 c9 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 d3 c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71fa758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a7 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 e1 c9 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 d3 c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71fa7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a7 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 e1 c9 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d2 c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71fa7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 a7 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e1 c9 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d2 c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71fa7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a7 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e1 c9 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b d2 c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71fa7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a7 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb e0 c9 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c d2 c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71fa808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a8 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e0 c9 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d1 c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71fa7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a7 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e0 c9 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae d1 c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71fa778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a7 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e e0 c9 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f d1 c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71fa798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a7 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff df c9 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 d1 c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71fa788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 a7 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 df c9 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d0 c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71fa7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a7 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 df c9 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 d0 c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71fa768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a7 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7503108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 31 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 df c9 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 d0 c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71fa818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 a8 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 18 33 50 c7 f7 7f 00 00 e8 f3 dd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 cf c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 b4 dd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ce c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 a9 1f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 75 dd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 ce c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 a9 1f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 36 dd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 ce c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 f7 dc c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ce c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 b8 dc c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 cd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 79 dc c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa cd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 3a dc c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b cd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 fb db c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c cd c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 a9 1f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 bc db c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed cc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 7d db c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae cc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 3e db c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f cc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 ff da c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 cc c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 a8 1f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 33 50 c7 f7 7f 00 00 e8 c0 da c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 cb c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 a9 1f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 33 50 c7 f7 7f 00 00 e8 84 da c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 cb c9 5e 48 b9 40 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 a8 1f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 33 50 c7 f7 7f 00 00 e8 48 da c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 cb c9 5e 48 b8 40 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 a9 1f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 dd c9 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 cf c9 5e}
004ch mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c71fa858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a8 1f c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 dd c9 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ce c9 5e}
008bh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c71fa948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a9 1f c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 dd c9 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ce c9 5e}
00cah mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c71fa938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a9 1f c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 dd c9 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ce c9 5e}
0109h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c71fa868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a8 1f c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 dc c9 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ce c9 5e}
0148h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c71fa8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a8 1f c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 dc c9 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 cd c9 5e}
0187h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c71fa8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a8 1f c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 dc c9 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa cd c9 5e}
01c6h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c71fa8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a8 1f c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a dc c9 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b cd c9 5e}
0205h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c71fa8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 a8 1f c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb db c9 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c cd c9 5e}
0244h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c71fa918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a9 1f c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc db c9 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed cc c9 5e}
0283h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c71fa8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a8 1f c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d db c9 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae cc c9 5e}
02c2h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c71fa888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 a8 1f c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e db c9 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f cc c9 5e}
0301h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c71fa8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a8 1f c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff da c9 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 cc c9 5e}
0340h mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c71fa898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a8 1f c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 da c9 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 cb c9 5e}
037fh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c71fa908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a9 1f c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 da c9 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 cb c9 5e}
03bbh mov rcx,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c71fa878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a8 1f c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7503318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 33 50 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 da c9 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 cb c9 5e}
03f7h mov rax,7ff7c625e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c71fa928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 a9 1f c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[643] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 bc 4f c7 f7 7f 00 00 e8 f1 d4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 c6 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 95 20 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 28 bc 4f c7 f7 7f 00 00 e8 b2 d4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 c5 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 95 20 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 28 bc 4f c7 f7 7f 00 00 e8 73 d4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 c5 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 95 20 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 28 bc 4f c7 f7 7f 00 00 e8 34 d4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 c5 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 95 20 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 28 bc 4f c7 f7 7f 00 00 e8 f5 d3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 c5 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 95 20 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 28 bc 4f c7 f7 7f 00 00 e8 b6 d3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 c4 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 95 20 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 28 bc 4f c7 f7 7f 00 00 e8 77 d3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 c4 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 94 20 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 28 bc 4f c7 f7 7f 00 00 e8 38 d3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 c4 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 94 20 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 28 bc 4f c7 f7 7f 00 00 e8 f9 d2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a c4 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 94 20 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 28 bc 4f c7 f7 7f 00 00 e8 ba d2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0012h ja near ptr 06d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bd 06 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+737h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 37 07 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d4 c9 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 c6 c9 5e}
004eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c72095b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 95 20 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 d4 c9 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 c5 c9 5e}
008dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7209598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 95 20 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 d4 c9 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 c5 c9 5e}
00cch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7209578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 95 20 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 d4 c9 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 c5 c9 5e}
010bh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7209558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 95 20 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 d3 c9 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 c5 c9 5e}
014ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c7209538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 95 20 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 d3 c9 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 c4 c9 5e}
0189h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c7209518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 95 20 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 d3 c9 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 c4 c9 5e}
01c8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c72094f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 94 20 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 d3 c9 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 c4 c9 5e}
0207h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c72094d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 94 20 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 d2 c9 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c4 c9 5e}
0246h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c72094b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 94 20 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c74fbc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 4f c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba d2 c9 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 eb c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1384] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 c0 4f c7 f7 7f 00 00 e8 01 c9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 ba c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 9f 20 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 c2 c8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 b9 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 97 20 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 83 c8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 b9 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 97 20 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 44 c8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 b9 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 97 20 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 05 c8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 b9 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 97 20 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 c6 c7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 b8 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 97 20 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 87 c7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 b8 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 97 20 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 48 c7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 b8 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 97 20 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 09 c7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a b8 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 ca c6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb b7 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 8b c6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc b7 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 4c c6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d b7 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 0d c6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e b7 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 ce c5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff b6 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 8f c5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 b6 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 50 c5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 b6 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 11 c5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 b6 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 d2 c4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 b6 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 93 c4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 b5 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 54 c4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 b5 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 15 c4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 b5 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 96 20 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 c0 4f c7 f7 7f 00 00 e8 d6 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0012h ja near ptr 06d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bd 06 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+737h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 37 07 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 c9 c9 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ba c9 5e}
004eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7209f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 9f 20 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c8 c9 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 b9 c9 5e}
008dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7209768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 97 20 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 c8 c9 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 b9 c9 5e}
00cch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7209758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 97 20 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 c8 c9 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 b9 c9 5e}
010bh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7209748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 97 20 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 c8 c9 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 b9 c9 5e}
014ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c7209738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 97 20 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c7 c9 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b8 c9 5e}
0189h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c7209728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 97 20 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 c7 c9 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 b8 c9 5e}
01c8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c7209718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 97 20 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 c7 c9 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 b8 c9 5e}
0207h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c7209708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 97 20 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 c7 c9 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b8 c9 5e}
0246h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c72096f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 96 20 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca c6 c9 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb b7 c9 5e}
0285h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c72096e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 96 20 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b c6 c9 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc b7 c9 5e}
02c4h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c72096d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 20 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c c6 c9 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d b7 c9 5e}
0303h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c72096c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 96 20 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d c6 c9 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e b7 c9 5e}
0342h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c72096b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 96 20 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce c5 c9 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff b6 c9 5e}
0381h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c72096a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 96 20 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c5 c9 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 b6 c9 5e}
03c0h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c7209698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 96 20 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 c5 c9 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 b6 c9 5e}
03ffh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c7209688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 96 20 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 c5 c9 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 b6 c9 5e}
043eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c7209678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 96 20 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 c4 c9 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 b6 c9 5e}
047dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c7209668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 96 20 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c4 c9 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b5 c9 5e}
04bch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c7209658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 96 20 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c4 c9 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b5 c9 5e}
04fbh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c7209648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 96 20 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c4 c9 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 b5 c9 5e}
053ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c7209638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 96 20 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c74fc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 4f c7 f7 7f 00 00}
0565h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 d6 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 21 c1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 b2 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 a1 20 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 e2 c0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 b2 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a1 20 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 a3 c0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 b1 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 64 c0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 b1 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 25 c0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 b1 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 e6 bf c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 b1 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 a7 bf c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 b0 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 68 bf c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 b0 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 29 bf c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a b0 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 ea be c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b b0 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 ab be c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc af c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 6c be c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d af c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 2d be c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e af c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 ee bd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f af c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 af bd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 ae c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 70 bd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 ae c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 31 bd c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 ae c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 f2 bc c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 ae c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a0 20 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 b3 bc c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 ad c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 9f 20 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 74 bc c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 ad c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 9f 20 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 35 bc c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 ad c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 9f 20 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 f6 bb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 ad c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 9f 20 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 b7 bb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 ac c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 9f 20 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 78 bb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 ac c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 9f 20 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 39 bb c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a ac c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 9f 20 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 fd ba c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e ac c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 9f 20 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 c2 4f c7 f7 7f 00 00 e8 c1 ba c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 ab c9 5e 48 b8 c0 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 70 9f 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0012h ja near ptr 06d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bd 06 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+737h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 37 07 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 c1 c9 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b2 c9 5e}
004eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c720a110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a1 20 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c0 c9 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 b2 c9 5e}
008dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c720a100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a1 20 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c0 c9 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 b1 c9 5e}
00cch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c720a0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a0 20 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c0 c9 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 b1 c9 5e}
010bh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c720a0e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a0 20 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c0 c9 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 b1 c9 5e}
014ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c720a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a0 20 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 bf c9 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 b1 c9 5e}
0189h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c720a0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 20 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 bf c9 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 b0 c9 5e}
01c8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c720a0b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a0 20 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 bf c9 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 b0 c9 5e}
0207h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c720a0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a0 20 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 bf c9 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a b0 c9 5e}
0246h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c720a090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a0 20 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea be c9 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b b0 c9 5e}
0285h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c720a080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a0 20 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab be c9 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc af c9 5e}
02c4h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c720a070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a0 20 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c be c9 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d af c9 5e}
0303h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c720a060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a0 20 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d be c9 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e af c9 5e}
0342h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c720a050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a0 20 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee bd c9 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f af c9 5e}
0381h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c720a040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a0 20 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af bd c9 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 ae c9 5e}
03c0h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c720a030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a0 20 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 bd c9 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ae c9 5e}
03ffh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c720a020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a0 20 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 bd c9 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ae c9 5e}
043eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c720a010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a0 20 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 bc c9 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 ae c9 5e}
047dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c720a000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a0 20 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 bc c9 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ad c9 5e}
04bch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c7209ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 9f 20 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 bc c9 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ad c9 5e}
04fbh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c7209fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 9f 20 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 bc c9 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 ad c9 5e}
053ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c7209fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 9f 20 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 bb c9 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 ad c9 5e}
0579h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c7209fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 9f 20 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 bb c9 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 ac c9 5e}
05b8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c7209fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 20 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 bb c9 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 ac c9 5e}
05f7h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c7209fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9f 20 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 bb c9 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a ac c9 5e}
0636h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c7209f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9f 20 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ba c9 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e ac c9 5e}
0672h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c7209f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9f 20 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c74fc2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 4f c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ba c9 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ab c9 5e}
06aeh mov rax,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e8 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c7209f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 9f 20 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<short>> lookup<short>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[186] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 c5 4f c7 f7 7f 00 00 e8 41 b9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 aa c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 a2 20 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 28 c5 4f c7 f7 7f 00 00 e8 02 b9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 aa c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a2 20 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 28 c5 4f c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0012h ja near ptr 06d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bd 06 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+737h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 37 07 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c74fc528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 4f c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 b9 c9 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 aa c9 5e}
004eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c720a2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a2 20 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c74fc528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 4f c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 b9 c9 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 aa c9 5e}
008dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c720a2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a2 20 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c74fc528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 4f c7 f7 7f 00 00}
00b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 c7 4f c7 f7 7f 00 00 e8 51 ad c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 9e c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 12 ad c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 9e c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 d3 ac c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 9e c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 94 ac c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 9d c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 55 ac c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 9d c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 16 ac c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 9d c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 d7 ab c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 9d c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 98 ab c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 9c c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 59 ab c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 9c c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 1a ab c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 9c c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 db aa c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 9c c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 9c aa c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 9b c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 5d aa c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 9b c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 1e aa c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 9b c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 df a9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 9b c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 a0 a9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 9a c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 61 a9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 9a c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 22 a9 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 9a c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 bb 20 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 e3 a8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 9a c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 a3 20 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 a4 a8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 99 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a3 20 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 65 a8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 99 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 a3 20 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 26 a8 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 99 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 a3 20 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 e7 a7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 99 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 a3 20 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 a8 a7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 98 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a3 20 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 c7 4f c7 f7 7f 00 00 e8 69 a7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 98 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 a2 20 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 c7 4f c7 f7 7f 00 00 e8 2d a7 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 98 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a2 20 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 c7 4f c7 f7 7f 00 00 e8 f1 a6 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 98 c9 5e 48 b8 c0 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 a2 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0012h ja near ptr 06d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bd 06 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+737h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 37 07 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 ad c9 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 9e c9 5e}
004eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c720bc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 bc 20 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 ad c9 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 9e c9 5e}
008dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c720bc10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bc 20 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 ac c9 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 9e c9 5e}
00cch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c720bc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 bc 20 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 ac c9 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 9d c9 5e}
010bh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c720bbf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 bb 20 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 ac c9 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 9d c9 5e}
014ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c720bbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 bb 20 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 ac c9 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 9d c9 5e}
0189h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c720bbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 bb 20 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 ab c9 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 9d c9 5e}
01c8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c720bbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 bb 20 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 ab c9 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 9c c9 5e}
0207h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c720bbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bb 20 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ab c9 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 9c c9 5e}
0246h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c720bba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 bb 20 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a ab c9 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 9c c9 5e}
0285h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c720bb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bb 20 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db aa c9 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 9c c9 5e}
02c4h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c720bb80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 bb 20 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c aa c9 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 9b c9 5e}
0303h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c720bb70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 bb 20 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d aa c9 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 9b c9 5e}
0342h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c720bb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb 20 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e aa c9 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 9b c9 5e}
0381h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c720bb50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bb 20 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df a9 c9 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 9b c9 5e}
03c0h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c720bb40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bb 20 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 a9 c9 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 9a c9 5e}
03ffh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c720bb30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 bb 20 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 a9 c9 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 9a c9 5e}
043eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c720bb20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 bb 20 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 a9 c9 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 9a c9 5e}
047dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c720bb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bb 20 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a8 c9 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 9a c9 5e}
04bch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c720a350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a3 20 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a8 c9 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 99 c9 5e}
04fbh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c720a340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a3 20 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a8 c9 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 99 c9 5e}
053ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c720a330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a3 20 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 a8 c9 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 99 c9 5e}
0579h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c720a320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a3 20 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 a7 c9 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 99 c9 5e}
05b8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c720a310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a3 20 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 a7 c9 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 98 c9 5e}
05f7h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c720a300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a3 20 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a7 c9 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 98 c9 5e}
0636h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c720a2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a2 20 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d a7 c9 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 98 c9 5e}
0672h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c720a2e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a2 20 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c74fc798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 4f c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 a6 c9 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 98 c9 5e}
06aeh mov rax,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e8 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c720a2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 a2 20 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 ca 4f c7 f7 7f 00 00 e8 71 a5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 96 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 32 a5 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 96 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 f3 a4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 96 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 b4 a4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 95 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 75 a4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 95 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 36 a4 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 95 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 f7 a3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 95 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 b8 a3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 94 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 79 a3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 94 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 3a a3 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 94 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 fb a2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 94 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 bc a2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 93 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 7d a2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 93 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 3e a2 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 93 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 bd 20 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 ff a1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 93 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 c0 a1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 92 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 81 a1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 92 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 42 a1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 92 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 03 a1 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 92 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 c4 a0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 91 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 85 a0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 91 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 46 a0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 91 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 07 a0 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 91 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 c8 9f c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 90 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 bc 20 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 ca 4f c7 f7 7f 00 00 e8 89 9f c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 90 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 bc 20 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 ca 4f c7 f7 7f 00 00 e8 4d 9f c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7e 90 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 bc 20 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 ca 4f c7 f7 7f 00 00 e8 11 9f c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 90 c9 5e 48 b8 c0 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 30 bc 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0012h ja near ptr 06d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bd 06 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+737h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 37 07 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 a5 c9 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 96 c9 5e}
004eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c720bdd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 bd 20 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 a5 c9 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 96 c9 5e}
008dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c720bdc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 bd 20 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 a4 c9 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 96 c9 5e}
00cch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c720bdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bd 20 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 a4 c9 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 95 c9 5e}
010bh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c720bda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 bd 20 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 a4 c9 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 95 c9 5e}
014ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c720bd90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bd 20 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 a4 c9 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 95 c9 5e}
0189h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c720bd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 bd 20 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 a3 c9 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 95 c9 5e}
01c8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c720bd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 bd 20 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 a3 c9 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 94 c9 5e}
0207h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c720bd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bd 20 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 a3 c9 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 94 c9 5e}
0246h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c720bd50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bd 20 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a a3 c9 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 94 c9 5e}
0285h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c720bd40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bd 20 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb a2 c9 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 94 c9 5e}
02c4h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c720bd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 bd 20 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc a2 c9 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 93 c9 5e}
0303h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c720bd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 bd 20 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d a2 c9 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 93 c9 5e}
0342h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c720bd10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bd 20 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e a2 c9 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 93 c9 5e}
0381h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c720bd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 bd 20 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff a1 c9 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 93 c9 5e}
03c0h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c720bcf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 bc 20 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 a1 c9 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 92 c9 5e}
03ffh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c720bce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 bc 20 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 a1 c9 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 92 c9 5e}
043eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c720bcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 bc 20 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 a1 c9 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 92 c9 5e}
047dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c720bcc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 bc 20 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 a1 c9 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 92 c9 5e}
04bch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c720bcb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bc 20 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 a0 c9 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 91 c9 5e}
04fbh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c720bca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 bc 20 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 a0 c9 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 91 c9 5e}
053ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c720bc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bc 20 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 a0 c9 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 91 c9 5e}
0579h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c720bc80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 bc 20 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 a0 c9 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 91 c9 5e}
05b8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c720bc70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 bc 20 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 9f c9 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 90 c9 5e}
05f7h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c720bc60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bc 20 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 9f c9 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 90 c9 5e}
0636h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c720bc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bc 20 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 9f c9 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 90 c9 5e}
0672h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c720bc40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bc 20 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c74fca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 4f c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 9f c9 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 90 c9 5e}
06aeh mov rax,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e8 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c720bc30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 bc 20 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ulong>> lookup<ulong>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 cc 4f c7 f7 7f 00 00 e8 81 99 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 8a c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 42 99 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 8a c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 03 99 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 8a c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 c4 98 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 89 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 85 98 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 89 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 46 98 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 89 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 07 98 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 89 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 ce 20 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 c8 97 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 88 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 ce 20 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 89 97 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 88 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 bf 20 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 4a 97 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 88 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 0b 97 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 88 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 cc 96 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 87 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 8d 96 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 87 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 4e 96 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 87 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 0f 96 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 87 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 d0 95 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 87 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 91 95 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 86 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 52 95 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 86 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 13 95 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 86 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 d4 94 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 86 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 95 94 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 85 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 56 94 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 85 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 17 94 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 85 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 d8 93 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 85 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 be 20 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 cc 4f c7 f7 7f 00 00 e8 99 93 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 84 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 be 20 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 cc 4f c7 f7 7f 00 00 e8 5d 93 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 84 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 bd 20 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 cc 4f c7 f7 7f 00 00 e8 21 93 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 84 c9 5e 48 b8 c0 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 bd 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0012h ja near ptr 06d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bd 06 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+737h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 37 07 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 99 c9 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 8a c9 5e}
004eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c720cf50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cf 20 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 99 c9 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 8a c9 5e}
008dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c720cf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 cf 20 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 99 c9 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 8a c9 5e}
00cch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c720cf30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 cf 20 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 98 c9 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 89 c9 5e}
010bh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c720cf20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 cf 20 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 98 c9 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 89 c9 5e}
014ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c720cf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 cf 20 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 98 c9 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 89 c9 5e}
0189h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c720cf00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 cf 20 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 98 c9 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 89 c9 5e}
01c8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c720cef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ce 20 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 97 c9 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 88 c9 5e}
0207h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c720cee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ce 20 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 97 c9 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 88 c9 5e}
0246h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c720bf00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 bf 20 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 97 c9 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 88 c9 5e}
0285h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c720bef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 be 20 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 97 c9 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 88 c9 5e}
02c4h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c720bee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 be 20 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 96 c9 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 87 c9 5e}
0303h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c720bed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 be 20 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 96 c9 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 87 c9 5e}
0342h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c720bec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 be 20 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 96 c9 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 87 c9 5e}
0381h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c720beb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 be 20 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 96 c9 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 87 c9 5e}
03c0h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c720bea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 be 20 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 95 c9 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 87 c9 5e}
03ffh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c720be90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be 20 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 95 c9 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 86 c9 5e}
043eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c720be80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 be 20 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 95 c9 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 86 c9 5e}
047dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c720be70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 be 20 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 95 c9 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 86 c9 5e}
04bch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c720be60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 be 20 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 94 c9 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 86 c9 5e}
04fbh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c720be50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 be 20 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 94 c9 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 85 c9 5e}
053ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c720be40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 be 20 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 94 c9 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 85 c9 5e}
0579h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c720be30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 be 20 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 94 c9 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 85 c9 5e}
05b8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c720be20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 be 20 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 93 c9 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 85 c9 5e}
05f7h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c720be10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 be 20 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 93 c9 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 84 c9 5e}
0636h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c720be00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 be 20 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 93 c9 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 84 c9 5e}
0672h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c720bdf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 bd 20 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c74fcc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 4f c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 93 c9 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 84 c9 5e}
06aeh mov rax,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e8 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c720bde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 bd 20 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<long>> lookup<long>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 a1 91 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 82 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 d1 20 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 62 91 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 82 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 23 91 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 82 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 e4 90 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 82 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 a5 90 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 81 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 66 90 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 81 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 27 90 c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 81 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 e8 8f c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 81 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 a9 8f c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 80 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 6a 8f c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 80 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 2b 8f c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 80 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 ec 8e c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 80 c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 ad 8e c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 7f c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 6e 8e c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 7f c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 2f 8e c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 7f c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 f0 8d c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 7f c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 b1 8d c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 7e c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 d0 20 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 72 8d c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 7e c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 33 8d c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 7e c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 f4 8c c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 7e c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 b5 8c c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 7d c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 76 8c c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 7d c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 37 8c c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 7d c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 f8 8b c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 7d c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 cf 20 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 b9 8b c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 7c c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 cf 20 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 7d 8b c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 7c c9 5e 48 b9 c0 e8 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 cf 20 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 ce 4f c7 f7 7f 00 00 e8 41 8b c9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 7c c9 5e 48 b8 c0 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 cf 20 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0012h ja near ptr 06d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bd 06 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+737h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 37 07 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 91 c9 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 82 c9 5e}
004eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c720d100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d1 20 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 91 c9 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 82 c9 5e}
008dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c720d0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d0 20 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 91 c9 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 82 c9 5e}
00cch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c720d0e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d0 20 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 90 c9 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 82 c9 5e}
010bh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c720d0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d0 20 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 90 c9 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 81 c9 5e}
014ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c720d0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d0 20 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 90 c9 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 81 c9 5e}
0189h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c720d0b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d0 20 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 90 c9 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 81 c9 5e}
01c8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c720d0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 20 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 8f c9 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 81 c9 5e}
0207h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c720d090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d0 20 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 8f c9 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 80 c9 5e}
0246h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c720d080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d0 20 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 8f c9 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 80 c9 5e}
0285h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c720d070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d0 20 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 8f c9 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 80 c9 5e}
02c4h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c720d060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d0 20 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 8e c9 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 80 c9 5e}
0303h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c720d050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 20 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 8e c9 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 7f c9 5e}
0342h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c720d040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d0 20 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 8e c9 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 7f c9 5e}
0381h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c720d030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d0 20 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 8e c9 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 7f c9 5e}
03c0h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c720d020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d0 20 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 8d c9 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 7f c9 5e}
03ffh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c720d010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 20 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 8d c9 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 7e c9 5e}
043eh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c720d000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d0 20 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 8d c9 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 7e c9 5e}
047dh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c720cff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 cf 20 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 8d c9 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 7e c9 5e}
04bch mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c720cfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 cf 20 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 8c c9 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 7e c9 5e}
04fbh mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c720cfd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 cf 20 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 8c c9 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 7d c9 5e}
053ah mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c720cfc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cf 20 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 8c c9 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 7d c9 5e}
0579h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c720cfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cf 20 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 8c c9 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 7d c9 5e}
05b8h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c720cfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 cf 20 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 8b c9 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 7d c9 5e}
05f7h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c720cf90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 cf 20 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 8b c9 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 7c c9 5e}
0636h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c720cf80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cf 20 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 8b c9 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 7c c9 5e}
0672h mov rcx,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c720cf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cf 20 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c74fcee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 4f c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 8b c9 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 7c c9 5e}
06aeh mov rax,7ff7c625e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e8 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c720cf60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 cf 20 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
