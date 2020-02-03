------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 f0 7c 6c c7 f7 7f 00 00 e8 d8 3e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 30 b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 66 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c7cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 7c 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 3e b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 30 b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73966a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 66 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 a0 aa 6c c7 f7 7f 00 00 e8 98 3d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 2e b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 40 67 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76caaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 3d b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 2e b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7396740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 67 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ushort>> lookup<ushort>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 a0 7e 6c c7 f7 7f 00 00 e8 58 3c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 2d b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 90 67 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c7ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7e 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 3c b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 2d b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7396790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 67 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<short>> lookup<short>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 c0 88 6c c7 f7 7f 00 00 e8 18 3b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 2c b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 67 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c88c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 88 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 3b b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 2c b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73967e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 67 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<uint>> lookup<uint>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 50 80 6c c7 f7 7f 00 00 e8 d8 39 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 2b b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 30 68 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c8050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 80 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 39 b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 2b b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7396830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 68 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<int>> lookup<int>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 70 8a 6c c7 f7 7f 00 00 e8 98 38 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 29 b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 28 88 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c8a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8a 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 38 b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 29 b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7398828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 88 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ulong>> lookup<ulong>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 20 60 6c c7 f7 7f 00 00 e8 58 37 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 28 b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 78 88 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c6020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 60 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 37 b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 28 b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7398878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 88 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<long>> lookup<long>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 50 ac 6c c7 f7 7f 00 00 e8 18 36 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 27 b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 88 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76cac50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ac 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 36 b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 27 b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73988c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 88 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<byte>> lookup<byte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 b0 83 6c c7 f7 7f 00 00 e8 d8 34 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 26 b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 89 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c83b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 83 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 34 b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 26 b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73989b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 89 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 00 ae 6c c7 f7 7f 00 00 e8 98 33 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 24 b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 58 8a 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76cae00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ae 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 33 b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 24 b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7398a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 8a 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ushort>> lookup<ushort>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 60 85 6c c7 f7 7f 00 00 e8 58 32 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 23 b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 8a 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c8560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 85 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 32 b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 23 b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7398aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 8a 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<short>> lookup<short>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 20 8c 6c c7 f7 7f 00 00 e8 18 31 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 22 b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 8a 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c8c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 8c 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 31 b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 22 b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7398af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 8a 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<uint>> lookup<uint>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 10 87 6c c7 f7 7f 00 00 e8 d8 2f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 21 b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 48 8b 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c8710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 87 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 2f b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 21 b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7398b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 8b 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<int>> lookup<int>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 d0 8d 6c c7 f7 7f 00 00 e8 98 2e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 1f b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 98 8b 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c8dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 8d 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 2e b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 1f b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7398b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 8b 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ulong>> lookup<ulong>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 00 82 6c c7 f7 7f 00 00 e8 58 2d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 1e b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 8b 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76c8200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 82 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 2d b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 1e b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7398be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 8b 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<long>> lookup<long>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 e8 ca 6c c7 f7 7f 00 00 e8 18 2c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 1d b0 5e 48 b8 00 e2 27 c6 f7 7f 00 00 48 89 46 18 48 b8 18 99 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ccae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ca 6c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 2c b0 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 1d b0 5e}
0037h mov rax,7ff7c627e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7399918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 99 39 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 1f 6c c7 f7 7f 00 00 e8 c1 2a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 1b b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 28 9a 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c1f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 1f 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 2a b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 1b b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c7399a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 9a 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 1c 6c c7 f7 7f 00 00 e8 11 29 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 1a b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 9a 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c1c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 1c 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 29 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 1a b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c7399aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9a 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 19 6c c7 f7 7f 00 00 e8 61 27 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 18 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 9a 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c1900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 19 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 27 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 18 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c7399ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 9a 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 17 6c c7 f7 7f 00 00 e8 b1 25 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 16 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 28 9b 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c1750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 17 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 25 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 16 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c7399b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 9b 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 2b 6c c7 f7 7f 00 00 e8 01 24 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 15 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 68 9b 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c2b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 2b 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 24 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 15 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c7399b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 9b 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 27 6c c7 f7 7f 00 00 e8 51 22 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 13 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 9b 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c2770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 27 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 22 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 13 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c7399ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9b 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 22 6c c7 f7 7f 00 00 e8 a1 20 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 11 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 9b 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c22c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 22 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 20 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 11 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c7399be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 9b 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 2e 6c c7 f7 7f 00 00 e8 f1 1e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 10 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 9c 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c2eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2e 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1e b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 10 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c7399ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9c 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 4e 6c c7 f7 7f 00 00 e8 41 19 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 0a b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 98 ac 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c4eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4e 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 19 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 0a b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c739ac98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 ac 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 4b 6c c7 f7 7f 00 00 e8 91 17 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 08 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 18 ad 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c4b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4b 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 17 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 08 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c739ad18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 ad 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 a3 6a c7 f7 7f 00 00 e8 e1 15 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 07 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 58 ad 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76aa348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a3 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 15 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 07 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c739ad58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 ad 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 1a 6c c7 f7 7f 00 00 e8 31 14 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 05 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 98 ad 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c1ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1a 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 14 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 05 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c739ad98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 ad 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 58 6c c7 f7 7f 00 00 e8 81 12 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 03 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 ad 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c5810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 58 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 12 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 03 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c739add8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 ad 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 54 6c c7 f7 7f 00 00 e8 d1 10 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 02 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 18 ae 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c54e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 54 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 10 b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 02 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c739ae18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 ae 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 5e 6c c7 f7 7f 00 00 e8 21 0f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 00 b0 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 58 ae 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c5e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 5e 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 0f b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 00 b0 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c739ae58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 ae 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 5b 6c c7 f7 7f 00 00 e8 71 0d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 fe af 5e 48 b8 c0 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 78 ba 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76c5b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5b 6c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 0d b0 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 fe af 5e}
004eh mov rax,7ff7c627e1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e1 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c739ba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 ba 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<byte>> lookup<byte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 b0 1e 8d c7 f7 7f 00 00 e8 bb 0b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec fc af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 50 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d1eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1e 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 0b b0 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec fc af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a50e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 50 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<sbyte>> lookup<sbyte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 20 24 8d c7 f7 7f 00 00 e8 bb 09 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec fa af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 51 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d2420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 24 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 09 b0 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec fa af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a51a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 51 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ushort>> lookup<ushort>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 b0 27 8d c7 f7 7f 00 00 e8 bb 07 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec f8 af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 20 52 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d27b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 27 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 07 b0 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec f8 af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a5220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 52 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<short>> lookup<short>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 40 2b 8d c7 f7 7f 00 00 e8 bb 05 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec f6 af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 98 52 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d2b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 2b 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 05 b0 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec f6 af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a5298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 52 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<uint>> lookup<uint>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d0 2e 8d c7 f7 7f 00 00 e8 bb ff af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec f0 af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 10 53 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d2ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2e 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ff af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec f0 af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a5310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 53 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<int>> lookup<int>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 60 32 8d c7 f7 7f 00 00 e8 bb fd af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec ee af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 10 69 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d3260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 32 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fd af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ee af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a6910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 69 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ulong>> lookup<ulong>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 f0 35 8d c7 f7 7f 00 00 e8 bb fb af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec ec af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 88 69 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d35f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 35 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fb af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ec af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a6988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 69 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<long>> lookup<long>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 80 39 8d c7 f7 7f 00 00 e8 bb f9 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec ea af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 00 6a 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d3980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 39 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f9 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ea af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a6a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 6a 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<byte>> lookup<byte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 28 41 8d c7 f7 7f 00 00 e8 bb f7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec e8 af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 20 6b 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d4128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 41 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f7 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec e8 af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a6b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 6b 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<sbyte>> lookup<sbyte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 98 46 8d c7 f7 7f 00 00 e8 bb f5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec e6 af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 6b 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d4698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 46 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f5 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec e6 af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a6be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 6b 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ushort>> lookup<ushort>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 28 4a 8d c7 f7 7f 00 00 e8 bb f3 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec e4 af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 60 6c 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f3 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec e4 af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a6c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 6c 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<short>> lookup<short>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 b8 4d 8d c7 f7 7f 00 00 e8 bb ed af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec de af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 7a 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d4db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 4d 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ed af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec de af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a7ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 7a 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 48 51 8d c7 f7 7f 00 00 e8 bb eb af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec dc af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 58 7b 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d5148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 51 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb eb af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec dc af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a7b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 7b 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<int>> lookup<int>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d8 54 8d c7 f7 7f 00 00 e8 bb e9 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec da af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 7b 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d54d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 54 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb e9 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec da af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a7bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 7b 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ulong>> lookup<ulong>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 68 58 8d c7 f7 7f 00 00 e8 bb e7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec d8 af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 48 7c 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d5868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 58 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb e7 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec d8 af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a7c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 7c 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<long>> lookup<long>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 f8 5b 8d c7 f7 7f 00 00 e8 bb e5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec d6 af 5e 48 b8 d0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 7c 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78d5bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5b 8d c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb e5 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec d6 af 5e}
0054h mov rax,7ff7c627e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73a7cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 7c 3a c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 1f 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c1f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 1f 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 1c 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c1c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 1c 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 00 19 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c1900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 19 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 17 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c1750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 17 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 2b 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c2b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 2b 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 27 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c2770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 27 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 22 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c22c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 22 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 2e 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c2eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2e 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 4e 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c4eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4e 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 4b 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c4b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4b 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 a3 6a c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76aa348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a3 6a c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 1a 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c1ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1a 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 58 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c5810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 58 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 54 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c54e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 54 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 5e 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c5e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 5e 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[58] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 5b 6c c7 f7 7f 00 00 e8 c3}
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
002eh mov rcx,7ff7c76c5b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5b 6c c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1146] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 c1 8b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 7c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 df 3a c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 82 8b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 7c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 df 3a c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 43 8b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 7c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 df 3a c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 04 8b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 7c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 df 3a c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 c5 8a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 7b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 86 8a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 7b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 47 8a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 7b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 08 8a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 7b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 c9 89 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 7a af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 8a 89 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 7a af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 4b 89 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 7a af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 0c 89 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 7a af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 cd 88 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 79 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 8e 88 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 79 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 4f 88 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 79 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 10 88 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 79 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 d1 87 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 79 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 bc 8c c7 f7 7f 00 00 e8 92 87 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0030h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 8b af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 7c af 5e}
004eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73adf68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 df 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 8b af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 7c af 5e}
008dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73adf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 df 3a c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 8b af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 7c af 5e}
00cch mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73adf28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 3a c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 8b af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 7c af 5e}
010bh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73adf08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 df 3a c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 8a af 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 7b af 5e}
014ah mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73adee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 de 3a c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 8a af 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 7b af 5e}
0189h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73adec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 de 3a c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 8a af 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 7b af 5e}
01c8h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73adea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 de 3a c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 8a af 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 7b af 5e}
0207h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73ade88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 de 3a c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 89 af 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 7a af 5e}
0246h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73ade68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 de 3a c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 89 af 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 7a af 5e}
0285h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73ade48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 de 3a c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 89 af 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 7a af 5e}
02c4h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73ade28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 de 3a c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 89 af 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 7a af 5e}
0303h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73ade08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 de 3a c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 88 af 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 79 af 5e}
0342h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73adde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 dd 3a c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 88 af 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 79 af 5e}
0381h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73addc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dd 3a c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 88 af 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 79 af 5e}
03c0h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73adda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd 3a c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 88 af 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 79 af 5e}
03ffh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73add88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd 3a c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 87 af 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 79 af 5e}
043eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73add68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 dd 3a c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78cbce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 87 af 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[138] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 c1 8c c7 f7 7f 00 00 e8 d1 7f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 71 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 e9 3a c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 08 c1 8c c7 f7 7f 00 00 e8 92 7f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0030h mov rcx,7ff7c78cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 7f af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 71 af 5e}
004eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73ae910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e9 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 7f af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[52] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 c3}
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
0030h (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 78 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<short>> lookup<short>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 11 70 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 61 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 ec 3a c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 d2 6f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 61 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 ec 3a c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 93 6f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 60 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 ec 3a c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 54 6f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 60 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 ec 3a c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 15 6f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 60 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 ec 3a c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 d6 6e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 60 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 ec 3a c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 97 6e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 5f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 ec 3a c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 58 6e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 5f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 ec 3a c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 19 6e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 5f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 da 6d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 5f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 9b 6d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 5e af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 5c 6d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 5e af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 1d 6d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 5e af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 de 6c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 5e af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 9f 6c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 5d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 60 6c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 5d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 21 6c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 5d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 e2 6b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 5d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 a3 6b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 5c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 64 6b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 5c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 25 6b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 5c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 e6 6a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 5c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 a7 6a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 5b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 68 6a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 5b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 eb 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 29 6a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 5b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 ea 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 ed 69 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 5b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 ea 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 c5 8c c7 f7 7f 00 00 e8 b1 69 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 5a af 5e 48 b8 10 ea 27 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 ea 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 70 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 61 af 5e}
004eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73aec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 6f af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 61 af 5e}
008dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73aec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ec 3a c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 6f af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 60 af 5e}
00cch mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73aec50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ec 3a c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 6f af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 60 af 5e}
010bh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73aec40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ec 3a c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 6f af 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 60 af 5e}
014ah mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73aec30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ec 3a c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 6e af 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 60 af 5e}
0189h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73aec20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ec 3a c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 6e af 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 5f af 5e}
01c8h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73aec10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ec 3a c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 6e af 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 5f af 5e}
0207h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73aec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec 3a c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 6e af 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 5f af 5e}
0246h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73aebf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 eb 3a c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 6d af 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 5f af 5e}
0285h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73aebe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 eb 3a c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 6d af 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 5e af 5e}
02c4h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73aebd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 eb 3a c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 6d af 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 5e af 5e}
0303h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73aebc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 eb 3a c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 6d af 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 5e af 5e}
0342h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73aebb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 eb 3a c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 6c af 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 5e af 5e}
0381h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73aeba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 eb 3a c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 6c af 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 5d af 5e}
03c0h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73aeb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 eb 3a c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 6c af 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 5d af 5e}
03ffh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73aeb80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 eb 3a c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 6c af 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 5d af 5e}
043eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73aeb70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 eb 3a c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 6b af 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 5d af 5e}
047dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73aeb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 eb 3a c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 6b af 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 5c af 5e}
04bch mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73aeb50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 eb 3a c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 6b af 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 5c af 5e}
04fbh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73aeb40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 eb 3a c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 6b af 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 5c af 5e}
053ah mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73aeb30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 eb 3a c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 6a af 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 5c af 5e}
0579h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73aeb20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 eb 3a c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 6a af 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 5b af 5e}
05b8h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73aeb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 eb 3a c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 6a af 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 5b af 5e}
05f7h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73aeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 3a c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 6a af 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 5b af 5e}
0636h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73aeaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ea 3a c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 69 af 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 5b af 5e}
0672h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73aeae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ea 3a c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 69 af 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 5a af 5e}
06aeh mov rax,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 27 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73aead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 ea 3a c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 c8 8c c7 f7 7f 00 00 e8 21 64 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 55 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 e2 63 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 55 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 a3 63 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 54 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 64 63 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 54 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 25 63 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 54 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 e6 62 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 54 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 a7 62 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 53 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 68 62 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 53 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 29 62 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 53 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 ea 61 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 53 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 ab 61 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 52 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 6c 61 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 52 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 2d 61 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 52 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 ee 60 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 52 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 05 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 af 60 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 51 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 70 60 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 51 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 31 60 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 51 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 f2 5f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 51 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 b3 5f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 50 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 74 5f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 50 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 35 5f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 50 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 f6 5e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 50 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 b7 5e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 4f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 78 5e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 4f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 04 3b c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 c8 8c c7 f7 7f 00 00 e8 39 5e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 4f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 04 3b c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 c8 8c c7 f7 7f 00 00 e8 fd 5d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 4f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 04 3b c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 c8 8c c7 f7 7f 00 00 e8 c1 5d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 4e af 5e 48 b8 10 ea 27 c6 f7 7f 00 00 48 89 46 18 48 b8 80 ec 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 64 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 55 af 5e}
004eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73b05d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 05 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 63 af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 55 af 5e}
008dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73b05c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 05 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 63 af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 54 af 5e}
00cch mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73b05b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 05 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 63 af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 54 af 5e}
010bh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73b05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 63 af 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 54 af 5e}
014ah mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73b0590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 05 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 62 af 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 54 af 5e}
0189h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73b0580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 05 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 62 af 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 53 af 5e}
01c8h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73b0570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 05 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 62 af 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 53 af 5e}
0207h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73b0560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 05 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 62 af 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 53 af 5e}
0246h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73b0550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 05 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 61 af 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 53 af 5e}
0285h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73b0540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 05 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 61 af 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 52 af 5e}
02c4h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73b0530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 61 af 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 52 af 5e}
0303h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73b0520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 05 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 61 af 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 52 af 5e}
0342h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73b0510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 05 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 60 af 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 52 af 5e}
0381h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73b0500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 05 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 60 af 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 51 af 5e}
03c0h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73b04f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 04 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 60 af 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 51 af 5e}
03ffh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73b04e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 04 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 60 af 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 51 af 5e}
043eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73b04d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 04 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 5f af 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 51 af 5e}
047dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73b04c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 04 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 5f af 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 50 af 5e}
04bch mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73b04b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 04 3b c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 5f af 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 50 af 5e}
04fbh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73b04a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 04 3b c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 5f af 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 50 af 5e}
053ah mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73b0490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 04 3b c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 5e af 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 50 af 5e}
0579h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73b0480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 04 3b c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 5e af 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 4f af 5e}
05b8h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73b0470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 04 3b c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 5e af 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 4f af 5e}
05f7h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73b0460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 04 3b c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 5e af 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4f af 5e}
0636h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73b0450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 04 3b c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 5d af 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 4f af 5e}
0672h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73b0440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 04 3b c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 5d af 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 4e af 5e}
06aeh mov rax,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 27 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73aec80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 ec 3a c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[186] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 ca 8c c7 f7 7f 00 00 e8 41 5c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 4d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 07 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 c8 ca 8c c7 f7 7f 00 00 e8 02 5c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 4d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 07 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 c8 ca 8c c7 f7 7f 00 00 e8 c3}
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
0030h mov rcx,7ff7c78ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 5c af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 4d af 5e}
004eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73b0780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 07 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 5c af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 4d af 5e}
008dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73b0770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 07 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 8c c7 f7 7f 00 00}
00b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ulong>> lookup<ulong>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 cd 8c c7 f7 7f 00 00 e8 51 50 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 41 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 12 50 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 41 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 d3 4f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 41 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 94 4f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 40 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 55 4f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 40 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 16 4f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 40 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 d7 4e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 40 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 98 4e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 3f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 59 4e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 3f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 1a 4e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 3f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 db 4d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 3f af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 9c 4d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 3e af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 5d 4d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 3e af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 1e 4d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 3e af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 df 4c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 3e af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 a0 4c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 3d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 18 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 61 4c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 3d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 08 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 22 4c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 3d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 08 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 e3 4b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 3d af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 08 3b c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 a4 4b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 3c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 08 3b c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 65 4b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 3c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 07 3b c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 26 4b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 3c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 07 3b c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 e7 4a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 3c af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 07 3b c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 a8 4a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 3b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 07 3b c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 cd 8c c7 f7 7f 00 00 e8 69 4a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 3b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 07 3b c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 cd 8c c7 f7 7f 00 00 e8 2d 4a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 3b af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 07 3b c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 cd 8c c7 f7 7f 00 00 e8 f1 49 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 3b af 5e 48 b8 10 ea 27 c6 f7 7f 00 00 48 89 46 18 48 b8 90 07 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 50 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 41 af 5e}
004eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73b1900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 19 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 50 af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 41 af 5e}
008dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73b18f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 18 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 4f af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 41 af 5e}
00cch mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73b18e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 4f af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 40 af 5e}
010bh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73b18d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 18 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 4f af 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 40 af 5e}
014ah mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73b18c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 18 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 4f af 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 40 af 5e}
0189h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73b18b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 18 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 4e af 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 40 af 5e}
01c8h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73b18a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 18 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 4e af 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 3f af 5e}
0207h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73b1890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 18 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 4e af 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 3f af 5e}
0246h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73b1880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 18 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 4e af 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 3f af 5e}
0285h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73b1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 18 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 4d af 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 3f af 5e}
02c4h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73b1860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 18 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 4d af 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 3e af 5e}
0303h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73b1850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 18 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 4d af 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 3e af 5e}
0342h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73b1840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 18 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 4d af 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 3e af 5e}
0381h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73b1830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 18 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 4c af 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 3e af 5e}
03c0h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73b1820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 18 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 4c af 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 3d af 5e}
03ffh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73b1810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 18 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 4c af 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 3d af 5e}
043eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73b0830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 08 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 4c af 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 3d af 5e}
047dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73b0820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 08 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 4b af 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 3d af 5e}
04bch mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73b0810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 08 3b c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 4b af 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 3c af 5e}
04fbh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73b0800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 08 3b c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 4b af 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 3c af 5e}
053ah mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73b07f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 07 3b c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 4b af 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 3c af 5e}
0579h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73b07e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 07 3b c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 4a af 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 3c af 5e}
05b8h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73b07d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 07 3b c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 4a af 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 3b af 5e}
05f7h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73b07c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 07 3b c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 4a af 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 3b af 5e}
0636h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73b07b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 07 3b c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 4a af 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 3b af 5e}
0672h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73b07a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 07 3b c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 49 af 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 3b af 5e}
06aeh mov rax,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 27 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73b0790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 07 3b c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<long>> lookup<long>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 71 48 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 39 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 32 48 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 39 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 f3 47 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 39 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 b4 47 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 38 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 75 47 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 38 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 36 47 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 38 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 f7 46 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 38 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 b8 46 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 37 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 79 46 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 37 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 3a 46 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 37 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 fb 45 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 37 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 bc 45 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 36 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 1a 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 7d 45 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 36 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 3e 45 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 36 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 ff 44 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 36 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 c0 44 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 35 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 81 44 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 35 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 42 44 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 35 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 03 44 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 35 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 c4 43 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 34 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 85 43 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 34 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 46 43 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 34 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 07 43 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 34 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 c8 42 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 33 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 19 3b c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 89 42 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 33 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 19 3b c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 4d 42 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7e 33 af 5e 48 b9 10 ea 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 19 3b c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 cf 8c c7 f7 7f 00 00 e8 11 42 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 33 af 5e 48 b8 10 ea 27 c6 f7 7f 00 00 48 89 46 18 48 b8 10 19 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 48 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 39 af 5e}
004eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73b1ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1a 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 48 af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 39 af 5e}
008dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73b1aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 1a 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 47 af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 39 af 5e}
00cch mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73b1a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 1a 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 47 af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 38 af 5e}
010bh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73b1a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 1a 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 47 af 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 38 af 5e}
014ah mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73b1a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 1a 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 47 af 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 38 af 5e}
0189h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73b1a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 1a 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 46 af 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 38 af 5e}
01c8h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73b1a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 1a 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 46 af 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 37 af 5e}
0207h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73b1a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 1a 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 46 af 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 37 af 5e}
0246h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73b1a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 1a 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 46 af 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 37 af 5e}
0285h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73b1a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 1a 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 45 af 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 37 af 5e}
02c4h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73b1a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 1a 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 45 af 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 36 af 5e}
0303h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73b1a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1a 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 45 af 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 36 af 5e}
0342h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73b19f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 19 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 45 af 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 36 af 5e}
0381h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73b19e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 19 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 44 af 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 36 af 5e}
03c0h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73b19d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 19 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 44 af 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 35 af 5e}
03ffh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73b19c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 19 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 44 af 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 35 af 5e}
043eh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73b19b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 19 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 44 af 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 35 af 5e}
047dh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73b19a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 19 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 44 af 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 35 af 5e}
04bch mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73b1990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 19 3b c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 43 af 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 34 af 5e}
04fbh mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73b1980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 19 3b c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 43 af 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 34 af 5e}
053ah mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73b1970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 19 3b c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 43 af 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 34 af 5e}
0579h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73b1960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 19 3b c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 43 af 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 34 af 5e}
05b8h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73b1950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 19 3b c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 42 af 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 33 af 5e}
05f7h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73b1940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 19 3b c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 42 af 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 33 af 5e}
0636h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73b1930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 19 3b c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 42 af 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 33 af 5e}
0672h mov rcx,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 27 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73b1920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 19 3b c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78ccfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 42 af 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 33 af 5e}
06aeh mov rax,7ff7c627ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 27 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73b1910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 19 3b c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
