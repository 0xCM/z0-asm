------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 a8 5d 69 c7 f7 7f 00 00 e8 f8 31 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 23 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 80 73 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7695da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5d 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 31 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 23 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7357380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 73 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 58 8b 69 c7 f7 7f 00 00 e8 b8 30 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 21 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 20 74 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7698b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8b 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 30 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 21 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7357420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 74 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ushort>> lookup<ushort>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 58 5f 69 c7 f7 7f 00 00 e8 78 2f b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 20 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 70 74 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7695f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5f 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 2f b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 20 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7357470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 74 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<short>> lookup<short>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 78 69 69 c7 f7 7f 00 00 e8 38 2e b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 1f b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 74 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7696978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 69 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 2e b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 1f b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73574c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 74 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<uint>> lookup<uint>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 08 61 69 c7 f7 7f 00 00 e8 f8 2c b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 1e b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 10 75 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7696108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 61 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 2c b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 1e b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7357510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 75 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<int>> lookup<int>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 28 6b 69 c7 f7 7f 00 00 e8 b8 2b b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 1c b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 08 95 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7696b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6b 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 2b b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 1c b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 95 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ulong>> lookup<ulong>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 d8 40 69 c7 f7 7f 00 00 e8 78 2a b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 1b b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 58 95 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76940d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 40 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 2a b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 1b b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 95 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<long>> lookup<long>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 08 8d 69 c7 f7 7f 00 00 e8 38 29 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 1a b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 95 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7698d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8d 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 29 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 1a b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73595a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 95 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<byte>> lookup<byte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 68 64 69 c7 f7 7f 00 00 e8 f8 27 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 19 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 98 96 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7696468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 64 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 27 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 19 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 96 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 b8 8e 69 c7 f7 7f 00 00 e8 b8 26 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 17 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 38 97 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7698eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8e 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 26 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 17 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 97 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ushort>> lookup<ushort>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 18 66 69 c7 f7 7f 00 00 e8 78 25 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 16 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 88 97 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7696618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 66 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 25 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 16 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 97 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<short>> lookup<short>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 d8 6c 69 c7 f7 7f 00 00 e8 38 24 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 15 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 97 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7696cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 6c 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 24 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 15 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73597d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 97 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<uint>> lookup<uint>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 c8 67 69 c7 f7 7f 00 00 e8 f8 22 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 14 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 28 98 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76967c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 22 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 14 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 98 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<int>> lookup<int>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 88 6e 69 c7 f7 7f 00 00 e8 b8 21 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 12 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 78 98 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7696e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 6e 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 21 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 12 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 98 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ulong>> lookup<ulong>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 b8 62 69 c7 f7 7f 00 00 e8 78 20 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 11 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 98 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76962b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 62 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 20 b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 11 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73598c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 98 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<long>> lookup<long>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 a0 ab 69 c7 f7 7f 00 00 e8 38 1f b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 10 b4 5e 48 b8 00 e2 23 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 a5 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c769aba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ab 69 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 1f b4 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 10 b4 5e}
0037h mov rax,7ff7c623e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c735a5f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 a5 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 00 69 c7 f7 7f 00 00 e8 e1 1d b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 0f b4 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 08 a7 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7690048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 1d b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 0f b4 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735a708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 a7 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 fc 66 c7 f7 7f 00 00 e8 31 1c b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 0d b4 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 88 a7 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 1c b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 0d b4 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735a788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 a7 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 81 1a b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 0b b4 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 a7 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 1a b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 0b b4 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735a7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a7 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 f6 66 c7 f7 7f 00 00 e8 d1 18 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 0a b4 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 08 a8 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c766f6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f6 66 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 18 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 0a b4 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735a808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 a8 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 0b 69 c7 f7 7f 00 00 e8 21 17 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 08 b4 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 48 a8 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 17 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 08 b4 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735a848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 a8 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 08 69 c7 f7 7f 00 00 e8 71 15 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 06 b4 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 88 a8 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 15 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 06 b4 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735a888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 a8 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 03 69 c7 f7 7f 00 00 e8 c1 13 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 04 b4 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 a8 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 13 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 04 b4 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735a8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a8 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 0e 69 c7 f7 7f 00 00 e8 11 12 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 03 b4 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 88 a9 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 12 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 03 b4 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735a988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 a9 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 2f 69 c7 f7 7f 00 00 e8 61 0c b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 fd b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 78 b9 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 0c b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fd b3 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735b978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 b9 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 2c 69 c7 f7 7f 00 00 e8 b1 0a b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 fb b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 b9 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 0a b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb b3 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735b9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 b9 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 8f 66 c7 f7 7f 00 00 e8 01 09 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 fa b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 38 ba 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 09 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 fa b3 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735ba38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 ba 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 fa 66 c7 f7 7f 00 00 e8 51 07 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 f8 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 78 ba 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 07 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f8 b3 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735ba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 ba 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 38 69 c7 f7 7f 00 00 e8 a1 05 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 f6 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 ba 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 05 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f6 b3 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735bab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 ba 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 35 69 c7 f7 7f 00 00 e8 f1 03 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 f5 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 ba 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 03 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f5 b3 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735baf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 ba 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 3f 69 c7 f7 7f 00 00 e8 41 02 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 f3 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 38 bb 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 02 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 f3 b3 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735bb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 bb 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 91 00 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 f1 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 58 c7 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 00 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f1 b3 5e}
004eh mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c735c758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 c7 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<byte>> lookup<byte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 68 54 8a c7 f7 7f 00 00 e8 db fe b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c f0 b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 5d 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a5468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 54 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fe b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c f0 b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7365dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 5d 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<sbyte>> lookup<sbyte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d8 59 8a c7 f7 7f 00 00 e8 db fc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c ee b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 88 5e 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a59d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 59 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fc b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c ee b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7365e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 5e 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ushort>> lookup<ushort>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 68 5d 8a c7 f7 7f 00 00 e8 db fa b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c ec b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 00 5f 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a5d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5d 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fa b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c ec b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7365f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 5f 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<short>> lookup<short>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 f8 60 8a c7 f7 7f 00 00 e8 db f8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c ea b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 78 5f 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a60f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 60 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f8 b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c ea b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7365f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 5f 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<uint>> lookup<uint>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 88 64 8a c7 f7 7f 00 00 e8 db f2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c e4 b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 5f 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a6488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 64 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f2 b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c e4 b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7365ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 5f 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<int>> lookup<int>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 18 68 8a c7 f7 7f 00 00 e8 db f0 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c e2 b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 75 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a6818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 68 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f0 b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c e2 b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73675f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 75 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ulong>> lookup<ulong>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 a8 6b 8a c7 f7 7f 00 00 e8 db ee b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c e0 b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 68 76 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a6ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6b 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db ee b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c e0 b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7367668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 76 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<long>> lookup<long>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 38 6f 8a c7 f7 7f 00 00 e8 db ec b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c de b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 76 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a6f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6f 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db ec b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c de b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73676e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 76 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<byte>> lookup<byte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 e0 76 8a c7 f7 7f 00 00 e8 db ea b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c dc b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 00 78 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a76e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 76 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db ea b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c dc b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7367800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 78 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<sbyte>> lookup<sbyte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 50 7c 8a c7 f7 7f 00 00 e8 db e8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c da b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 78 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a7c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7c 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db e8 b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c da b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73678c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 78 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ushort>> lookup<ushort>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 e0 7f 8a c7 f7 7f 00 00 e8 db e6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c d8 b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 40 79 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a7fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7f 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db e6 b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c d8 b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7367940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 79 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<short>> lookup<short>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 70 83 8a c7 f7 7f 00 00 e8 db e0 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c d2 b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 87 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a8370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 83 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db e0 b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c d2 b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73687c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 87 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 00 87 8a c7 f7 7f 00 00 e8 db de b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c d0 b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 38 88 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a8700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 87 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db de b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c d0 b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7368838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 88 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<int>> lookup<int>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 90 8a 8a c7 f7 7f 00 00 e8 db dc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c ce b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 88 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a8a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8a 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db dc b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c ce b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73688b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 88 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ulong>> lookup<ulong>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 20 8e 8a c7 f7 7f 00 00 e8 db da b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c cc b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 28 89 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a8e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 8e 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db da b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c cc b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7368928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 89 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<long>> lookup<long>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 b0 91 8a c7 f7 7f 00 00 e8 db d8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c ca b3 5e 48 b8 d0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 89 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78a91b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 91 8a c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db d8 b3 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c ca b3 5e}
0054h mov rax,7ff7c623e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73689a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 89 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[137] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 00 69 c7 f7 7f 00 00 e8 e3 d2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 c4 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 c8 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 00 69 c7 f7 7f 00 00 e8 a4 d2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 c3}
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
002eh mov rcx,7ff7c7690048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 d2 b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 c4 b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735c808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c8 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7690048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 d2 b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 d5 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 00 fc 66 c7 f7 7f 00 00 e8 e3 cd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 bf b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 cd 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 a4 cd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 be b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 65 cd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 be b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 26 cd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 be b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 cd 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 e7 cc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 be b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 a8 cc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 bd b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 69 cc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a bd b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 2a cc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b bd b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 eb cb b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c bd b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 ac cb b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd bc b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 6d cb b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e bc b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 cd 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 2e cb b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f bc b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 ef ca b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 bc b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 fc 66 c7 f7 7f 00 00 e8 b0 ca b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 bb b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ce 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 fc 66 c7 f7 7f 00 00 e8 74 ca b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 bb b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 cd 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 fc 66 c7 f7 7f 00 00 e8 38 ca b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 bb b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 98 ce 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 cd b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 bf b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735cdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 cd 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 cd b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 be b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735ceb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ce 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 cd b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 be b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735cea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ce 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 cd b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 be b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735cdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 cd 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 cc b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 be b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735ce48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ce 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 cc b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 bd b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735ce38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ce 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 cc b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a bd b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735ce58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ce 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a cc b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b bd b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735ce28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ce 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb cb b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c bd b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735ce88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ce 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac cb b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd bc b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735ce68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ce 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d cb b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e bc b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735cdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 cd 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e cb b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f bc b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735ce18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ce 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ca b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 bc b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735ce08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ce 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 ca b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 bb b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735ce78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ce 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ca b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 bb b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735cde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 cd 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c766fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 66 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ca b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 bb b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735ce98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 ce 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 e3 c8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 ba b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 a4 c8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 b9 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 65 c8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 b9 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 26 c8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 b9 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ce 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 e7 c7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 b9 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 a8 c7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 b8 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 69 c7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a b8 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 2a c7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b b8 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 eb c6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c b8 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 ac c6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd b7 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 6d c6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e b7 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 2e c6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f b7 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 ef c5 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 b7 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 cf 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 b0 c5 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 b6 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 cf 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 74 c5 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 b6 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ce 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 f8 66 c7 f7 7f 00 00 e8 38 c5 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 b6 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 cf 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 c8 b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ba b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735ced8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ce 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 c8 b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 b9 b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735cfc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 cf 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 c8 b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 b9 b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735cfb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 cf 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 c8 b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 b9 b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735cee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 c7 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 b9 b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735cf58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cf 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 c7 b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 b8 b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735cf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 cf 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 c7 b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a b8 b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735cf68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cf 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c7 b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b b8 b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735cf38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cf 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb c6 b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c b8 b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735cf98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 cf 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c6 b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd b7 b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d c6 b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e b7 b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735cf08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cf 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e c6 b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f b7 b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735cf28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cf 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef c5 b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 b7 b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 c5 b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 b6 b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735cf88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 cf 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 c5 b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 b6 b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735cef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ce 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c766f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 66 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 c5 b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 b6 b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 cf 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[59] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 f6 66 c7 f7 7f 00 00 e8 e3 c3}
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
002eh mov rcx,7ff7c766f6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f6 66 c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 e3 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 58 0b 69 c7 f7 7f 00 00 e8 e3 be b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 b0 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 d0 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 a4 be b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 af b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 65 be b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 af b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 26 be b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 af b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 d1 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 e7 bd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 af b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 d1 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 a8 bd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 ae b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 d1 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 69 bd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a ae b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 d1 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 2a bd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b ae b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 d1 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 eb bc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c ae b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 ac bc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd ad b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 d1 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 6d bc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e ad b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 d1 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 2e bc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f ad b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 d1 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 ef bb b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 ad b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 d1 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 0b 69 c7 f7 7f 00 00 e8 b0 bb b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 ac b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 dd 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 0b 69 c7 f7 7f 00 00 e8 74 bb b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 ac b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d1 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 0b 69 c7 f7 7f 00 00 e8 38 bb b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 ac b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 48 dd 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 be b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 b0 b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 be b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 af b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735dd68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 dd 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 be b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 af b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735dd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 dd 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 be b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 af b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735d108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d1 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 bd b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 af b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735d178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 bd b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 ae b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735d168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d1 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 bd b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a ae b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735d188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d1 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a bd b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b ae b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735d158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d1 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb bc b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ae b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735dd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 dd 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac bc b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ad b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735d198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d1 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d bc b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ad b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735d128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d1 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e bc b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f ad b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735d148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d1 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef bb b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 ad b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735d138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d1 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 bb b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ac b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735dd28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 dd 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 bb b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ac b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735d118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d1 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7690b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0b 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 bb b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ac b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735dd48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 dd 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 28 08 69 c7 f7 7f 00 00 e8 e3 b9 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 ab b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 a4 b9 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 aa b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 65 b9 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 aa b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 26 b9 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 aa b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 e7 b8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 aa b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 a8 b8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 a9 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 69 b8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a a9 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 2a b8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b a9 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 eb b7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c a9 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 ac b7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd a8 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 6d b7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e a8 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 2e b7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f a8 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 ef b6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 a8 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 dd 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 08 69 c7 f7 7f 00 00 e8 b0 b6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 a7 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 de 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 08 69 c7 f7 7f 00 00 e8 74 b6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 a7 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 dd 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 08 69 c7 f7 7f 00 00 e8 38 b6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 a7 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 58 de 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 b9 b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ab b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735dd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b9 b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 aa b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735de78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 de 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 b9 b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 aa b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735de68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 de 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 b9 b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 aa b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735dd98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 dd 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 b8 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 aa b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735de08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 de 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 b8 b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 a9 b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735ddf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 dd 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 b8 b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a a9 b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735de18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 de 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a b8 b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b a9 b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735dde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 dd 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb b7 b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c a9 b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735de48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 de 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac b7 b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd a8 b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735de28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 de 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d b7 b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e a8 b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735ddb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 dd 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e b7 b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f a8 b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735ddd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 dd 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b6 b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 a8 b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735ddc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dd 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 b6 b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 a7 b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735de38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 de 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 b6 b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 a7 b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735dda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7690828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b6 b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a7 b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735de58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 de 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 78 03 69 c7 f7 7f 00 00 e8 e3 b4 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 a6 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 a4 b4 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 a5 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 65 b4 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 a5 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 26 b4 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 a5 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 e7 b3 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 a5 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 a8 b3 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 a4 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 69 b3 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a a4 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 2a b3 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b a4 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 eb b2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c a4 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 ac b2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd a3 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 6d b2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e a3 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 2e b2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f a3 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 ef b1 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 a3 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 de 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 03 69 c7 f7 7f 00 00 e8 b0 b1 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 a2 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 df 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 03 69 c7 f7 7f 00 00 e8 74 b1 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 a2 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 de 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 03 69 c7 f7 7f 00 00 e8 38 b1 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 a2 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 68 df 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 b4 b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 a6 b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735de98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 de 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b4 b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 a5 b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735df88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 df 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 b4 b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 a5 b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735df78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 df 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 b4 b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 a5 b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735dea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 de 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 b3 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 a5 b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735df18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 b3 b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 a4 b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735df08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 df 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 b3 b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a a4 b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735df28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a b3 b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b a4 b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735def8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 de 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb b2 b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c a4 b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735df58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 df 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac b2 b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd a3 b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735df38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 df 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d b2 b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e a3 b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735dec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 de 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e b2 b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f a3 b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735dee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 de 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b1 b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 a3 b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735ded8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 de 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 b1 b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 a2 b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735df48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 df 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 b1 b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 a2 b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735deb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 de 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7690378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b1 b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a2 b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735df68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 df 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 88 0e 69 c7 f7 7f 00 00 e8 e3 af b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 a1 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 a4 af b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 a0 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 e0 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 65 af b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 a0 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 e0 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 26 af b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 a0 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 e7 ae b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 a0 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 e0 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 a8 ae b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 9f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 e0 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 69 ae b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 9f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 e0 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 2a ae b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 9f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 e0 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 eb ad b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 9f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 e0 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 ac ad b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 9e b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 e0 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 6d ad b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 9e b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 2e ad b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 9e b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 ef ac b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 9e b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 df 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 0e 69 c7 f7 7f 00 00 e8 b0 ac b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 9d b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 e0 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 0e 69 c7 f7 7f 00 00 e8 74 ac b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 9d b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 df 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 0e 69 c7 f7 7f 00 00 e8 38 ac b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 9d b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 78 e0 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 af b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 a1 b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735dfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 df 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 af b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 a0 b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735e098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e0 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 af b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 a0 b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735e088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e0 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 af b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 a0 b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735dfb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 df 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 ae b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 a0 b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735e028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 ae b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 9f b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735e018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e0 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ae b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 9f b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735e038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e0 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a ae b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 9f b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735e008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e0 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ad b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 9f b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735e068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e0 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac ad b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 9e b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735e048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e0 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d ad b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 9e b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735dfd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 df 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e ad b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 9e b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735dff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ac b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 9e b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735dfe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 df 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 ac b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 9d b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735e058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e0 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ac b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 9d b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735dfc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 df 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7690e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ac b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 9d b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735e078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 e0 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 68 2f 69 c7 f7 7f 00 00 e8 e3 aa b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 9c b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ec 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 a4 aa b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 9b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ee 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 65 aa b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 9b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ee 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 26 aa b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 9b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ec 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 e7 a9 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 9b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ed 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 a8 a9 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 9a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ed 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 69 a9 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 9a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ed 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 2a a9 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 9a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ed 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 eb a8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 9a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ee 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 ac a8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 99 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ee 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 6d a8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 99 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ed 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 2e a8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 99 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ed 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 ef a7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 99 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ed 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 2f 69 c7 f7 7f 00 00 e8 b0 a7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 98 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ee 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 2f 69 c7 f7 7f 00 00 e8 74 a7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 98 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ed 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 2f 69 c7 f7 7f 00 00 e8 38 a7 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 98 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 68 ee 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 aa b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 9c b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735ecc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ec 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 aa b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 9b b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735eea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ee 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 aa b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 9b b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735ee88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ee 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 aa b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 9b b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735ece8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ec 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 a9 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 9b b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 a9 b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 9a b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735eda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ed 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a9 b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 9a b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735ede8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ed 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a a9 b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 9a b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735ed88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ed 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb a8 b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 9a b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735ee48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ee 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac a8 b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 99 b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735ee08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ee 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d a8 b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 99 b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735ed28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ed 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e a8 b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 99 b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735ed68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ed 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef a7 b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 99 b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735ed48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ed 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 a7 b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 98 b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735ee28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ee 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 a7 b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 98 b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735ed08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ed 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7692f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2f 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a7 b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 98 b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735ee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 ee 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 2c 69 c7 f7 7f 00 00 e8 e3 a5 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 97 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ef 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 a4 a5 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 96 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f0 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 65 a5 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 96 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f0 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 26 a5 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 96 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ef 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 e7 a4 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 96 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f0 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 a8 a4 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 95 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f0 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 69 a4 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 95 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f0 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 2a a4 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 95 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f0 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 eb a3 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 95 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f0 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 ac a3 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 94 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f0 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 6d a3 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 94 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ef 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 2e a3 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 94 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ef 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 ef a2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 94 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ef 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 2c 69 c7 f7 7f 00 00 e8 b0 a2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 93 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f0 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 2c 69 c7 f7 7f 00 00 e8 74 a2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 93 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ef 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 2c 69 c7 f7 7f 00 00 e8 38 a2 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 93 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 78 f0 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a5 b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 97 b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735efa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ef 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a5 b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 96 b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a5 b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 96 b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735f088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f0 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 a5 b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 96 b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735efb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ef 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 a4 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 96 b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735f028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f0 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 a4 b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 95 b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735f018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f0 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a4 b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 95 b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735f038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f0 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a a4 b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 95 b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735f008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f0 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb a3 b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 95 b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735f068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f0 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac a3 b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 94 b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735f048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f0 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d a3 b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 94 b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735efd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ef 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e a3 b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 94 b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735eff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ef 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef a2 b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 94 b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735efe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 a2 b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 93 b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735f058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f0 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 a2 b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 93 b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735efc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ef 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7692c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a2 b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 93 b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735f078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 f0 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 8f 66 c7 f7 7f 00 00 e8 e3 a0 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 92 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f6 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 a4 a0 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 91 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 65 a0 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 91 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 26 a0 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 91 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f6 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 e7 9f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 91 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f6 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 a8 9f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 90 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f6 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 69 9f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 90 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 2a 9f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 90 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f6 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 eb 9e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 90 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 ac 9e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 8f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 6d 9e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 8f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f6 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 2e 9e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 8f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f6 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 ef 9d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 8f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f6 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 8f 66 c7 f7 7f 00 00 e8 b0 9d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 8e b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f7 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 8f 66 c7 f7 7f 00 00 e8 74 9d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 8e b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f6 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 8f 66 c7 f7 7f 00 00 e8 38 9d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 8e b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 48 f7 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a0 b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 92 b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735f678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a0 b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 91 b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735f768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f7 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a0 b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 91 b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735f758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f7 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 a0 b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 91 b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735f688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f6 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 9f b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 91 b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735f6f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f6 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 9f b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 90 b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735f6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f6 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 9f b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 90 b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735f708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f7 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 9f b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 90 b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 9e b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 90 b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735f738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f7 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 9e b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 8f b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735f718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f7 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 9e b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 8f b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735f6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f6 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 9e b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 8f b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735f6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f6 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 9d b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 8f b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735f6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f6 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 9d b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 8e b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735f728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f7 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 9d b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 8e b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735f698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f6 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7668f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8f 66 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 9d b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 8e b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735f748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 f7 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 fa 66 c7 f7 7f 00 00 e8 e3 9b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 8d b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 a4 9b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 8c b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 65 9b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 8c b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 26 9b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 8c b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 e7 9a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 8c b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 a8 9a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 8b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 69 9a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 8b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 2a 9a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 8b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 eb 99 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 8b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 ac 99 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 8a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 6d 99 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 8a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 2e 99 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 8a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 ef 98 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 8a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f7 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 fa 66 c7 f7 7f 00 00 e8 b0 98 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 89 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f8 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 fa 66 c7 f7 7f 00 00 e8 74 98 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 89 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f7 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 fa 66 c7 f7 7f 00 00 e8 38 98 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 89 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 58 f8 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 9b b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 8d b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735f788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f7 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 9b b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 8c b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735f878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f8 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 9b b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 8c b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735f868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f8 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 9b b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 8c b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735f798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f7 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 9a b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 8c b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735f808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f8 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 9a b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 8b b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735f7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f7 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 9a b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 8b b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735f818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f8 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 9a b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 8b b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735f7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f7 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 99 b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 8b b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735f848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f8 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 99 b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 8a b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735f828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f8 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 99 b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 8a b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735f7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f7 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 99 b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 8a b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735f7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f7 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 98 b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 8a b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735f7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 98 b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 89 b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735f838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f8 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 98 b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 89 b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735f7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f7 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c766fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 66 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 98 b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 89 b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735f858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 f8 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c8 38 69 c7 f7 7f 00 00 e8 e3 96 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 88 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 a4 96 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 87 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 65 96 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 87 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 26 96 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 87 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 e7 95 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 87 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 a8 95 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 86 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 69 95 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 86 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 2a 95 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 86 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 eb 94 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 86 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 ac 94 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 85 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 6d 94 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 85 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 2e 94 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 85 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 ef 93 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 85 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f8 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 38 69 c7 f7 7f 00 00 e8 b0 93 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 84 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f9 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 38 69 c7 f7 7f 00 00 e8 74 93 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 84 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f8 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 38 69 c7 f7 7f 00 00 e8 38 93 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 84 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 68 f9 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 96 b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 88 b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735f898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f8 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 96 b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 87 b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c735f988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f9 35 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 96 b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 87 b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c735f978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f9 35 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 96 b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 87 b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735f8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f8 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 95 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 87 b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735f918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f9 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 95 b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 86 b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735f908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f9 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 95 b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 86 b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735f928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f9 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 95 b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 86 b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735f8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f8 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 94 b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 86 b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c735f958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f9 35 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 94 b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 85 b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735f938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f9 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 94 b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 85 b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735f8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f8 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 94 b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 85 b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735f8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 93 b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 85 b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735f8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f8 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 93 b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 84 b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 93 b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 84 b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735f8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f8 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 93 b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 84 b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c735f968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 f9 35 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 98 35 69 c7 f7 7f 00 00 e8 e3 91 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 83 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 a4 91 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 82 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 65 91 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 82 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 26 91 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 82 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 e7 90 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 82 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 fa 35 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 a8 90 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 81 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 fa 35 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 69 90 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 81 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 fa 35 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 2a 90 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 81 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 fa 35 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 eb 8f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 81 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 ac 8f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 80 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 fa 35 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 6d 8f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 80 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 2e 8f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 80 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 ef 8e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 80 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f9 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 35 69 c7 f7 7f 00 00 e8 b0 8e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 7f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 fa 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 35 69 c7 f7 7f 00 00 e8 74 8e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 7f b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f9 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 35 69 c7 f7 7f 00 00 e8 38 8e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 7f b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 18 03 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 91 b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 83 b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c735f9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f9 35 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 91 b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 82 b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7360338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 03 36 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 91 b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 82 b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7360328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 03 36 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 91 b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 82 b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c735f9b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f9 35 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 90 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 82 b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c735fa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fa 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 90 b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 81 b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c735fa18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 fa 35 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 90 b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 81 b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c735fa38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 fa 35 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 90 b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 81 b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c735fa08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fa 35 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 8f b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 81 b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7360308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 03 36 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 8f b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 80 b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c735fa48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fa 35 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 8f b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 80 b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c735f9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f9 35 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 8f b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 80 b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c735f9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f9 35 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 8e b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 80 b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c735f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 35 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 8e b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 7f b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c735fa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fa 35 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 8e b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 7f b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c735f9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f9 35 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7693598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 8e b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 7f b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7360318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 03 36 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 28 3f 69 c7 f7 7f 00 00 e8 e3 8c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 7e b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 a4 8c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 7d b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 65 8c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 7d b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 26 8c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 7d b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 e7 8b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 7d b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 a8 8b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 7c b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 69 8b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 7c b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 2a 8b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 7c b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 eb 8a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 7c b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 ac 8a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 7b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 6d 8a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 7b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 2e 8a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 7b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 ef 89 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 7b b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 03 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 3f 69 c7 f7 7f 00 00 e8 b0 89 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 7a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 04 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 3f 69 c7 f7 7f 00 00 e8 74 89 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 7a b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 03 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 3f 69 c7 f7 7f 00 00 e8 38 89 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 7a b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 28 04 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 8c b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 7e b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7360358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 03 36 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 8c b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 7d b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7360448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 04 36 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 8c b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 7d b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7360438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 04 36 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 8c b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 7d b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7360368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 03 36 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 8b b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 7d b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73603d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 03 36 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 8b b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 7c b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73603c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 03 36 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 8b b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 7c b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73603e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 03 36 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 8b b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 7c b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73603b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 03 36 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 8a b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 7c b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7360418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 04 36 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 8a b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 7b b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73603f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 03 36 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 8a b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 7b b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7360388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 03 36 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 8a b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 7b b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73603a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 03 36 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 89 b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 7b b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7360398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 03 36 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 89 b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 7a b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7360408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 04 36 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 89 b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 7a b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7360378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 03 36 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7693f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 89 b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 7a b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7360428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 04 36 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 e3 87 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 79 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 a4 87 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 78 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 05 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 65 87 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 78 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 05 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 26 87 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 78 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 e7 86 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 78 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 a8 86 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 77 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 69 86 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 77 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 2a 86 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 77 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 eb 85 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 77 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 05 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 ac 85 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 76 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 05 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 6d 85 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 76 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 2e 85 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 76 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 ef 84 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 76 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 04 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 b0 84 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 75 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 05 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 74 84 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 75 b3 5e 48 b9 c0 e1 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 04 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 3b 69 c7 f7 7f 00 00 e8 38 84 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 75 b3 5e 48 b8 c0 e1 23 c6 f7 7f 00 00 48 89 46 18 48 b8 38 05 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 87 b3 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 79 b3 5e}
004ch mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7360468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 36 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 87 b3 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 78 b3 5e}
008bh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7360558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 05 36 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 87 b3 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 78 b3 5e}
00cah mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7360548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 05 36 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 87 b3 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 78 b3 5e}
0109h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7360478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 04 36 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 86 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 78 b3 5e}
0148h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73604e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 04 36 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 86 b3 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 77 b3 5e}
0187h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73604d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 04 36 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 86 b3 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 77 b3 5e}
01c6h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73604f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 04 36 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 86 b3 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 77 b3 5e}
0205h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73604c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 04 36 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 85 b3 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 77 b3 5e}
0244h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7360528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 05 36 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 85 b3 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 76 b3 5e}
0283h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7360508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 36 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 85 b3 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 76 b3 5e}
02c2h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7360498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 04 36 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 85 b3 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 76 b3 5e}
0301h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73604b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 04 36 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 84 b3 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 76 b3 5e}
0340h mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73604a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 04 36 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 84 b3 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 75 b3 5e}
037fh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7360518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 05 36 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 84 b3 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 75 b3 5e}
03bbh mov rcx,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e1 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7360488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 04 36 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7693bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3b 69 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 84 b3 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 75 b3 5e}
03f7h mov rax,7ff7c623e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7360538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 05 36 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 e1 7e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 70 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 a2 7e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 6f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 63 7e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 6f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 24 7e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 6f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 e5 7d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 6f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 a6 7d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 6e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 67 7d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 6e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 28 7d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 6e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 e9 7c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 6e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 aa 7c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 6d b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 6b 7c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 6d b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 2c 7c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 6d b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 ed 7b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 6d b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 ae 7b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 6c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 6f 7b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 6c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 30 7b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 6c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 f1 7a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 6c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 b2 7a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 6b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 73 7a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 6b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 34 7a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 6b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 e9 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 f5 79 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 6b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 e9 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 b6 79 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 6a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 e9 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 77 79 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 6a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 e9 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 38 79 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 6a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 99 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 f9 78 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 6a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 99 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 bd 78 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 69 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 99 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 f2 88 c7 f7 7f 00 00 e8 81 78 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 69 b3 5e 48 b8 10 ea 23 c6 f7 7f 00 00 48 89 46 18 48 b8 08 99 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 7e b3 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 70 b3 5e}
004eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c736ec48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ec 36 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 7e b3 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 6f b3 5e}
008dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c736ec28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ec 36 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 7e b3 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 6f b3 5e}
00cch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c736ec08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ec 36 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 7e b3 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 6f b3 5e}
010bh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c736ebe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 eb 36 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 7d b3 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 6f b3 5e}
014ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c736ebc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 eb 36 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 7d b3 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 6e b3 5e}
0189h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c736eba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 eb 36 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 7d b3 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 6e b3 5e}
01c8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c736eb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 eb 36 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 7d b3 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 6e b3 5e}
0207h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c736eb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 eb 36 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 7c b3 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 6e b3 5e}
0246h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c736eb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 eb 36 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 7c b3 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 6d b3 5e}
0285h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c736eb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 eb 36 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 7c b3 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 6d b3 5e}
02c4h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c736eb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 eb 36 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 7c b3 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 6d b3 5e}
0303h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c736eae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ea 36 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 7b b3 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 6d b3 5e}
0342h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c736eac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ea 36 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 7b b3 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 6c b3 5e}
0381h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c736eaa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ea 36 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 7b b3 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 6c b3 5e}
03c0h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c736ea88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ea 36 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 7b b3 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 6c b3 5e}
03ffh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c736ea68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ea 36 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 7a b3 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 6c b3 5e}
043eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c736ea48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ea 36 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 7a b3 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 6b b3 5e}
047dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c736ea28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ea 36 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 7a b3 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 6b b3 5e}
04bch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c736ea08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ea 36 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 7a b3 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 6b b3 5e}
04fbh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c736e9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e9 36 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 79 b3 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 6b b3 5e}
053ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c736e9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e9 36 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 79 b3 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 6a b3 5e}
0579h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c736e9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e9 36 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 79 b3 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 6a b3 5e}
05b8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c736e988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e9 36 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 79 b3 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 6a b3 5e}
05f7h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c7369968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 99 36 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 78 b3 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 6a b3 5e}
0636h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c7369948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 99 36 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 78 b3 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 69 b3 5e}
0672h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c7369928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 99 36 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c788f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 88 c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 78 b3 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 69 b3 5e}
06aeh mov rax,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 23 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c7369908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 99 36 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 f1 72 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 64 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 b2 72 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 63 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 73 72 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 63 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 34 72 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 63 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 f5 71 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 63 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 b6 71 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 62 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 77 71 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 62 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 38 71 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 62 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 f9 70 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 62 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 ba 70 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 61 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 7b 70 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 61 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 3c 70 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 61 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 fd 6f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 61 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 be 6f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 60 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 7f 6f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 60 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 40 6f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 60 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 01 6f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 60 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 c2 6e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 5f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 83 6e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 5f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 44 6e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 5f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 05 6e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 5f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 c6 6d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 5e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 87 6d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 5e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 48 6d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 5e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 09 6d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 5e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ec 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 cd 6c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 5d b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ec 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 f6 88 c7 f7 7f 00 00 e8 91 6c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 5d b3 5e 48 b8 10 ea 23 c6 f7 7f 00 00 48 89 46 18 48 b8 68 ec 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 72 b3 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 64 b3 5e}
004eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c736f5f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f5 36 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 72 b3 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 63 b3 5e}
008dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c736f5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f5 36 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 72 b3 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 63 b3 5e}
00cch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c736f5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f5 36 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 72 b3 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 63 b3 5e}
010bh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c736f5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f5 36 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 71 b3 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 63 b3 5e}
014ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c736f5b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f5 36 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 71 b3 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 62 b3 5e}
0189h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c736f5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f5 36 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 71 b3 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 62 b3 5e}
01c8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c736f590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f5 36 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 71 b3 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 62 b3 5e}
0207h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c736f580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f5 36 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 70 b3 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 62 b3 5e}
0246h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c736f570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f5 36 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 70 b3 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 61 b3 5e}
0285h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c736ed78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed 36 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 70 b3 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 61 b3 5e}
02c4h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c736ed68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ed 36 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 70 b3 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 61 b3 5e}
0303h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c736ed58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ed 36 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 6f b3 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 61 b3 5e}
0342h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c736ed48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ed 36 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 6f b3 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 60 b3 5e}
0381h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c736ed38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ed 36 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 6f b3 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 60 b3 5e}
03c0h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c736ed28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ed 36 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 6f b3 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 60 b3 5e}
03ffh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c736ed18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ed 36 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 6f b3 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 60 b3 5e}
043eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c736ed08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ed 36 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 6e b3 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 5f b3 5e}
047dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c736ecf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ec 36 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 6e b3 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 5f b3 5e}
04bch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c736ece8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ec 36 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 6e b3 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 5f b3 5e}
04fbh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c736ecd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ec 36 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 6e b3 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 5f b3 5e}
053ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c736ecc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ec 36 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 6d b3 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 5e b3 5e}
0579h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c736ecb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ec 36 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 6d b3 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 5e b3 5e}
05b8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c736eca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ec 36 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 6d b3 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 5e b3 5e}
05f7h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c736ec98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ec 36 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 6d b3 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 5e b3 5e}
0636h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c736ec88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ec 36 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 6c b3 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 5d b3 5e}
0672h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c736ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 36 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c788f6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f6 88 c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6c b3 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 5d b3 5e}
06aeh mov rax,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 23 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c736ec68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 ec 36 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 f9 88 c7 f7 7f 00 00 e8 11 6b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 5c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 d2 6a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 5c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 93 6a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 5b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 54 6a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 5b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 15 6a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 5b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 d6 69 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 5b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 97 69 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 5a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 58 69 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 5a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 19 69 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 5a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 da 68 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 5a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 9b 68 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 59 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 5c 68 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 59 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 1d 68 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 59 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 de 67 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 59 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 9f 67 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 58 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 60 67 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 58 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 21 67 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 58 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 e2 66 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 58 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 a3 66 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 57 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 64 66 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 57 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 25 66 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 57 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 e6 65 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 57 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 a7 65 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 56 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 68 65 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 56 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 f9 88 c7 f7 7f 00 00 e8 29 65 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 56 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f6 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 f9 88 c7 f7 7f 00 00 e8 ed 64 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 56 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 f6 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 f9 88 c7 f7 7f 00 00 e8 b1 64 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 55 b3 5e 48 b8 10 ea 23 c6 f7 7f 00 00 48 89 46 18 48 b8 00 f6 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 6b b3 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 5c b3 5e}
004eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c736f7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f7 36 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 6a b3 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 5c b3 5e}
008dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c736f790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f7 36 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 6a b3 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 5b b3 5e}
00cch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c736f780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f7 36 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 6a b3 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 5b b3 5e}
010bh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c736f770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f7 36 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 6a b3 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 5b b3 5e}
014ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c736f760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f7 36 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 69 b3 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 5b b3 5e}
0189h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c736f750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f7 36 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 69 b3 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 5a b3 5e}
01c8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c736f740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f7 36 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 69 b3 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 5a b3 5e}
0207h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c736f730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f7 36 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 69 b3 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 5a b3 5e}
0246h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c736f720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f7 36 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 68 b3 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 5a b3 5e}
0285h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c736f710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f7 36 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 68 b3 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 59 b3 5e}
02c4h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c736f700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f7 36 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 68 b3 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 59 b3 5e}
0303h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c736f6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f6 36 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 68 b3 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 59 b3 5e}
0342h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c736f6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f6 36 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 67 b3 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 59 b3 5e}
0381h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c736f6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f6 36 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 67 b3 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 58 b3 5e}
03c0h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c736f6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f6 36 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 67 b3 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 58 b3 5e}
03ffh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c736f6b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f6 36 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 67 b3 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 58 b3 5e}
043eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c736f6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f6 36 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 66 b3 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 58 b3 5e}
047dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c736f690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f6 36 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 66 b3 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 57 b3 5e}
04bch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c736f680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f6 36 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 66 b3 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 57 b3 5e}
04fbh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c736f670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f6 36 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 66 b3 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 57 b3 5e}
053ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c736f660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f6 36 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 65 b3 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 57 b3 5e}
0579h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c736f650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f6 36 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 65 b3 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 56 b3 5e}
05b8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c736f640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f6 36 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 65 b3 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 56 b3 5e}
05f7h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c736f630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f6 36 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 65 b3 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 56 b3 5e}
0636h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c736f620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f6 36 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 64 b3 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 56 b3 5e}
0672h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c736f610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f6 36 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c788f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 88 c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 64 b3 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 55 b3 5e}
06aeh mov rax,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 23 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c736f600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 f6 36 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<short>> lookup<short>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1194] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 31 63 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 54 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 f9 36 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 f2 62 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 54 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f9 36 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 b3 62 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 53 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 f9 36 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 74 62 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 53 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f9 36 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 35 62 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 53 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 f9 36 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 f6 61 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 53 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 f9 36 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 b7 61 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 52 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 78 61 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 52 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 39 61 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 52 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 fa 60 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 52 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 bb 60 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 51 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 7c 60 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 51 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 3d 60 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 51 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 fe 5f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 51 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 bf 5f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 50 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 80 5f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 50 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 41 5f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 50 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 02 5f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 50 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f8 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b8 fb 88 c7 f7 7f 00 00 e8 c3}
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
0030h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 63 b3 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 54 b3 5e}
004eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c736f950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f9 36 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 62 b3 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 54 b3 5e}
008dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c736f940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f9 36 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 62 b3 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 53 b3 5e}
00cch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c736f930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f9 36 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 62 b3 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 53 b3 5e}
010bh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c736f920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f9 36 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 62 b3 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 53 b3 5e}
014ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c736f910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f9 36 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 61 b3 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 53 b3 5e}
0189h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c736f900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 36 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 61 b3 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 52 b3 5e}
01c8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c736f8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f8 36 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 61 b3 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 52 b3 5e}
0207h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c736f8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f8 36 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 61 b3 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 52 b3 5e}
0246h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c736f8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f8 36 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 60 b3 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 52 b3 5e}
0285h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c736f8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f8 36 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 60 b3 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 51 b3 5e}
02c4h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c736f8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f8 36 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 60 b3 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 51 b3 5e}
0303h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c736f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 36 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 60 b3 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 51 b3 5e}
0342h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c736f890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f8 36 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 5f b3 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 51 b3 5e}
0381h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c736f880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f8 36 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 5f b3 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 50 b3 5e}
03c0h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c736f870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 36 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 5f b3 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 50 b3 5e}
03ffh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c736f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 36 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 5f b3 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 50 b3 5e}
043eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c736f850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f8 36 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 5f b3 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 50 b3 5e}
047dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c736f840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f8 36 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c788fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 88 c7 f7 7f 00 00}
04a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[186] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 fe 88 c7 f7 7f 00 00 e8 41 57 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 48 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 12 37 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 28 fe 88 c7 f7 7f 00 00 e8 02 57 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 48 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 12 37 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 28 fe 88 c7 f7 7f 00 00 e8 c3}
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
0030h mov rcx,7ff7c788fe28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fe 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 57 b3 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 48 b3 5e}
004eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73712b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c788fe28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fe 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 57 b3 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 48 b3 5e}
008dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73712a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 12 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c788fe28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fe 88 c7 f7 7f 00 00}
00b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 00 8a c7 f7 7f 00 00 e8 61 4f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 40 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 22 4f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 40 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 e3 4e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 40 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 a4 4e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 3f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 65 4e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 3f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 26 4e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 3f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 e7 4d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 3f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 a8 4d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 3e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 69 4d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 3e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 2a 4d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 3e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 eb 4c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 3e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 ac 4c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 3d b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 6d 4c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 3d b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 2e 4c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 3d b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 ef 4b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 3d b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 b0 4b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 3c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 71 4b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 3c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 32 4b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 3c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 f3 4a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 3c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 b4 4a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 3b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 75 4a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 3b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 36 4a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 3b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 f7 49 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 3b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 13 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 b8 49 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 3a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 12 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 00 8a c7 f7 7f 00 00 e8 79 49 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 3a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 12 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 00 8a c7 f7 7f 00 00 e8 3d 49 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 3a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 12 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 00 8a c7 f7 7f 00 00 e8 01 49 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 3a b3 5e 48 b8 10 ea 23 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 12 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 4f b3 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 40 b3 5e}
004eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7371460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 14 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 4f b3 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 40 b3 5e}
008dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7371450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 14 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 4e b3 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 40 b3 5e}
00cch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7371440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 14 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 4e b3 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 3f b3 5e}
010bh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7371430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 14 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 4e b3 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 3f b3 5e}
014ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c7371420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 14 37 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 4e b3 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 3f b3 5e}
0189h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c7371410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 14 37 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 4d b3 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 3f b3 5e}
01c8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c7371400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 14 37 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 4d b3 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 3e b3 5e}
0207h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73713f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 13 37 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 4d b3 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 3e b3 5e}
0246h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73713e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 37 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 4d b3 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 3e b3 5e}
0285h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73713d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 13 37 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 4c b3 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 3e b3 5e}
02c4h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73713c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 13 37 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 4c b3 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 3d b3 5e}
0303h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73713b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 13 37 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 4c b3 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 3d b3 5e}
0342h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73713a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 13 37 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 4c b3 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 3d b3 5e}
0381h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c7371390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 13 37 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 4b b3 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 3d b3 5e}
03c0h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c7371380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 13 37 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 4b b3 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 3c b3 5e}
03ffh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c7371370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 13 37 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 4b b3 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 3c b3 5e}
043eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c7371360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 13 37 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 4b b3 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 3c b3 5e}
047dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c7371350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 13 37 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 4a b3 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 3c b3 5e}
04bch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c7371340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 13 37 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 4a b3 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 3b b3 5e}
04fbh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c7371330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 13 37 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 4a b3 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 3b b3 5e}
053ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c7371320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 13 37 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 4a b3 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 3b b3 5e}
0579h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c7371310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 13 37 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 49 b3 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 3b b3 5e}
05b8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c7371300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 13 37 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 49 b3 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 3a b3 5e}
05f7h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73712f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 12 37 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 49 b3 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 3a b3 5e}
0636h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73712e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 12 37 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 49 b3 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 3a b3 5e}
0672h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73712d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 12 37 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78a00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 8a c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 49 b3 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 3a b3 5e}
06aeh mov rax,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 23 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73712c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 12 37 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ulong>> lookup<ulong>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 03 8a c7 f7 7f 00 00 e8 71 43 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 34 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 32 43 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 34 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 f3 42 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 34 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 b4 42 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 33 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 75 42 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 33 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 36 42 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 33 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 f7 41 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 33 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 b8 41 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 32 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 79 41 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 32 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 3a 41 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 32 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 fb 40 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 32 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 bc 40 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 31 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 7d 40 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 31 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 3e 40 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 31 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 ff 3f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 31 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 25 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 c0 3f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 30 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 24 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 81 3f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 30 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 15 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 42 3f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 30 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 15 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 03 3f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 30 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 c4 3e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 2f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 85 3e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 2f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 46 3e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 2f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 07 3e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 2f b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 c8 3d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 2e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 14 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 03 8a c7 f7 7f 00 00 e8 89 3d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 2e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 14 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 03 8a c7 f7 7f 00 00 e8 4d 3d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7e 2e b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 14 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 03 8a c7 f7 7f 00 00 e8 11 3d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 2e b3 5e 48 b8 10 ea 23 c6 f7 7f 00 00 48 89 46 18 48 b8 70 14 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 43 b3 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 34 b3 5e}
004eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73725e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 25 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 43 b3 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 34 b3 5e}
008dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73725d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 25 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 42 b3 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 34 b3 5e}
00cch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73725c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 25 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 42 b3 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 33 b3 5e}
010bh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73725b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 25 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 42 b3 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 33 b3 5e}
014ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73725a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 25 37 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 42 b3 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 33 b3 5e}
0189h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c7372590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 25 37 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 41 b3 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 33 b3 5e}
01c8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c7372580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 37 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 41 b3 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 32 b3 5e}
0207h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c7372570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 25 37 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 41 b3 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 32 b3 5e}
0246h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c7372560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 25 37 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 41 b3 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 32 b3 5e}
0285h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c7372550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 25 37 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 40 b3 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 32 b3 5e}
02c4h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c7372540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 25 37 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 40 b3 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 31 b3 5e}
0303h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c7372530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 25 37 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 40 b3 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 31 b3 5e}
0342h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c7372520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 25 37 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 40 b3 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 31 b3 5e}
0381h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c7372510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 25 37 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 3f b3 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 31 b3 5e}
03c0h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c7372500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 25 37 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 3f b3 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 30 b3 5e}
03ffh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73724f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 24 37 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 3f b3 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 30 b3 5e}
043eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c7371510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 15 37 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 3f b3 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 30 b3 5e}
047dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c7371500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 15 37 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 3f b3 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 30 b3 5e}
04bch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73714f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 14 37 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 3e b3 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 2f b3 5e}
04fbh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73714e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 14 37 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 3e b3 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 2f b3 5e}
053ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73714d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 14 37 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 3e b3 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 2f b3 5e}
0579h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73714c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 37 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 3e b3 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 2f b3 5e}
05b8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73714b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 14 37 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 3d b3 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 2e b3 5e}
05f7h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73714a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 14 37 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 3d b3 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 2e b3 5e}
0636h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c7371490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 14 37 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 3d b3 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 2e b3 5e}
0672h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c7371480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 14 37 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78a0330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 03 8a c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 3d b3 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 2e b3 5e}
06aeh mov rax,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 23 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c7371470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 14 37 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<long>> lookup<long>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 05 8a c7 f7 7f 00 00 e8 91 3b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 2c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 52 3b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 2c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 13 3b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 2c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 d4 3a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 2c b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 95 3a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 2b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 56 3a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 2b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 17 3a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 2b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 d8 39 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 2b b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 99 39 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 2a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 5a 39 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 2a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 27 37 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 1b 39 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 2a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 dc 38 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 2a b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 9d 38 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 29 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 5e 38 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 29 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 1f 38 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 29 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 e0 37 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 29 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 a1 37 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 28 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 62 37 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 28 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 23 37 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 28 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 e4 36 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 28 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 a5 36 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 27 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 66 36 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 27 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 27 36 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 27 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 e8 35 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 27 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 26 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 05 8a c7 f7 7f 00 00 e8 a9 35 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 26 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 26 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 05 8a c7 f7 7f 00 00 e8 6d 35 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 26 b3 5e 48 b9 10 ea 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 26 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 05 8a c7 f7 7f 00 00 e8 31 35 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 26 b3 5e 48 b8 10 ea 23 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 25 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 3b b3 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 2c b3 5e}
004eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7372790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 27 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 3b b3 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 2c b3 5e}
008dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7372780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 27 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 3b b3 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 2c b3 5e}
00cch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7372770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 27 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 3a b3 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 2c b3 5e}
010bh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7372760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 27 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 3a b3 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 2b b3 5e}
014ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c7372750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 27 37 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 3a b3 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 2b b3 5e}
0189h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c7372740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 27 37 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 3a b3 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 2b b3 5e}
01c8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c7372730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 27 37 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 39 b3 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 2b b3 5e}
0207h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c7372720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 27 37 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 39 b3 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 2a b3 5e}
0246h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c7372710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 27 37 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 39 b3 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 2a b3 5e}
0285h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c7372700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 27 37 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 39 b3 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 2a b3 5e}
02c4h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73726f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 26 37 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 38 b3 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 2a b3 5e}
0303h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73726e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 26 37 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 38 b3 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 29 b3 5e}
0342h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73726d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 37 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 38 b3 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 29 b3 5e}
0381h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73726c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 26 37 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 38 b3 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 29 b3 5e}
03c0h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73726b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 26 37 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 37 b3 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 29 b3 5e}
03ffh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73726a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 26 37 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 37 b3 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 28 b3 5e}
043eh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c7372690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 26 37 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 37 b3 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 28 b3 5e}
047dh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c7372680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 26 37 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 37 b3 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 28 b3 5e}
04bch mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c7372670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 26 37 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 36 b3 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 28 b3 5e}
04fbh mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c7372660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 26 37 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 36 b3 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 27 b3 5e}
053ah mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c7372650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 26 37 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 36 b3 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 27 b3 5e}
0579h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c7372640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 26 37 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 36 b3 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 27 b3 5e}
05b8h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c7372630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 26 37 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 35 b3 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 27 b3 5e}
05f7h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c7372620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 26 37 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 35 b3 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 26 b3 5e}
0636h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c7372610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 26 37 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 35 b3 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 26 b3 5e}
0672h mov rcx,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 23 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c7372600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 26 37 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78a05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 8a c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 35 b3 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 26 b3 5e}
06aeh mov rax,7ff7c623ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 23 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73725f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 25 37 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
