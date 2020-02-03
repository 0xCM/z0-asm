------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 10 b0 1c c7 f7 7f 00 00 e8 18 58 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 49 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 4d 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cb010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b0 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 58 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 49 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a4d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 4d 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 20 c4 1c c7 f7 7f 00 00 e8 d8 56 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 48 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 00 4e 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cc420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c4 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 56 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 48 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a4e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 4e 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ushort>> lookup<ushort>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 c0 b1 1c c7 f7 7f 00 00 e8 98 55 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 46 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 50 4e 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cb1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 b1 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 55 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 46 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a4e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 4e 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<short>> lookup<short>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 60 bd 1c c7 f7 7f 00 00 e8 58 54 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 45 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 4e 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cbd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bd 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 54 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 45 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a4ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 4e 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<uint>> lookup<uint>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 70 b3 1c c7 f7 7f 00 00 e8 18 53 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 44 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 4e 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cb370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b3 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 53 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 44 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a4ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 4e 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<int>> lookup<int>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 10 bf 1c c7 f7 7f 00 00 e8 d8 51 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 43 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 6e 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cbf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bf 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 51 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 43 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a6ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 6e 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ulong>> lookup<ulong>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 60 ae 1c c7 f7 7f 00 00 e8 98 50 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 41 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 6f 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cae60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ae 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 50 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 41 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a6f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 6f 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<long>> lookup<long>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 d0 c5 1c c7 f7 7f 00 00 e8 58 4f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 40 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 88 6f 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cc5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c5 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 4f af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 40 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a6f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 6f 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<byte>> lookup<byte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 d0 b6 1c c7 f7 7f 00 00 e8 18 4e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 3f af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 70 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cb6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b6 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 4e af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 3f af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a7078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 70 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 80 c7 1c c7 f7 7f 00 00 e8 d8 4c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 3e af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 71 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cc780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c7 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 4c af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 3e af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a7118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 71 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ushort>> lookup<ushort>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 80 b8 1c c7 f7 7f 00 00 e8 98 4b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 3c af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 71 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cb880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b8 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 4b af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 3c af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a7168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 71 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<short>> lookup<short>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 c0 c0 1c c7 f7 7f 00 00 e8 58 4a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 3b af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 71 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cc0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 c0 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 4a af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 3b af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a71b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 71 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<uint>> lookup<uint>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 30 ba 1c c7 f7 7f 00 00 e8 18 49 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 3a af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 72 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cba30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ba 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 49 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 3a af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a7208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 72 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<int>> lookup<int>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 70 c2 1c c7 f7 7f 00 00 e8 d8 47 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 39 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 72 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cc270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 47 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 39 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a7258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 72 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ulong>> lookup<ulong>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 20 b5 1c c7 f7 7f 00 00 e8 98 46 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 37 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 72 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71cb520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b5 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 46 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 37 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a72a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 72 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<long>> lookup<long>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 50 e4 1c c7 f7 7f 00 00 e8 58 45 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 36 af 5e 48 b8 40 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 7f 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c71ce450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e4 1c c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 45 af 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 36 af 5e}
0037h mov rax,7ff7c625e240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e2 25 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73a7fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 7f 3a c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 58 1c c7 f7 7f 00 00 e8 01 44 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 35 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 80 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 44 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 35 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a80e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 80 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 55 1c c7 f7 7f 00 00 e8 51 42 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 33 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 81 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 42 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 33 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a8168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 81 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 51 1c c7 f7 7f 00 00 e8 a1 40 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 31 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 81 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 40 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 31 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a81a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 81 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 50 1c c7 f7 7f 00 00 e8 f1 3e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 30 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 81 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 3e af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 30 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a81e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 81 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 65 1c c7 f7 7f 00 00 e8 41 3d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 2e af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 82 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3d af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 2e af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a8228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 82 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 62 1c c7 f7 7f 00 00 e8 91 3b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 2c af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 82 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 3b af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 2c af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a8268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 82 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 e1 39 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 2b af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 82 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 39 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 2b af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a82a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 82 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 68 1c c7 f7 7f 00 00 e8 31 38 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 29 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 83 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 38 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 29 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a8368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 83 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 8a 1c c7 f7 7f 00 00 e8 81 32 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 23 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 93 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 32 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 23 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a9358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 93 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 86 1c c7 f7 7f 00 00 e8 d1 30 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 22 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 93 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 30 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 22 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a93d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 93 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 e7 1a c7 f7 7f 00 00 e8 21 2f af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 20 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 94 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 2f af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 20 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a9418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 94 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 53 1c c7 f7 7f 00 00 e8 71 2d af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 1e af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 94 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 2d af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 1e af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a9458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 94 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 93 1c c7 f7 7f 00 00 e8 c1 2b af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 1c af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 94 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 2b af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 1c af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a9498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 94 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 90 1c c7 f7 7f 00 00 e8 11 2a af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 1b af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 94 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 2a af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 1b af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a94d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 94 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 99 1c c7 f7 7f 00 00 e8 61 28 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 19 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 95 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 28 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 19 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73a9518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 95 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 96 1c c7 f7 7f 00 00 e8 b1 26 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 17 af 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 a1 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 26 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 17 af 5e}
004eh mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c73aa138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 a1 3a c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<byte>> lookup<byte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 20 6f 8c c7 f7 7f 00 00 e8 fb 24 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 16 af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 37 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c6f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 24 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 16 af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b37a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 37 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<sbyte>> lookup<sbyte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 90 74 8c c7 f7 7f 00 00 e8 fb 22 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 14 af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 38 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c7490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 74 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 22 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 14 af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b3868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 38 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ushort>> lookup<ushort>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 20 78 8c c7 f7 7f 00 00 e8 fb 20 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 12 af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 38 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c7820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 78 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 20 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 12 af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b38e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 38 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<short>> lookup<short>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 b0 7b 8c c7 f7 7f 00 00 e8 fb 1e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 10 af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 39 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c7bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7b 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 1e af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 10 af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b3958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 39 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<uint>> lookup<uint>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 40 7f 8c c7 f7 7f 00 00 e8 fb 18 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 0a af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 39 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c7f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7f 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 18 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 0a af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b39d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 39 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<int>> lookup<int>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d0 82 8c c7 f7 7f 00 00 e8 fb 16 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 08 af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 4f 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c82d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 82 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 16 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 08 af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b4fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 4f 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ulong>> lookup<ulong>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 60 86 8c c7 f7 7f 00 00 e8 fb 14 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 06 af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 50 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c8660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 86 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 14 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 06 af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b5048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 50 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<long>> lookup<long>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 f0 89 8c c7 f7 7f 00 00 e8 fb 12 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 04 af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 50 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c89f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 89 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 12 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 04 af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b50c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 50 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<byte>> lookup<byte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 98 91 8c c7 f7 7f 00 00 e8 fb 10 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 02 af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 51 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c9198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 91 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 10 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 02 af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b51e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 51 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<sbyte>> lookup<sbyte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 08 97 8c c7 f7 7f 00 00 e8 fb 0e af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 00 af 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 52 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c9708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 97 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 0e af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 00 af 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b52a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 52 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ushort>> lookup<ushort>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 98 9a 8c c7 f7 7f 00 00 e8 fb 0c af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c fe ae 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 20 53 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c9a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9a 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 0c af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c fe ae 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b5320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 53 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<short>> lookup<short>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 28 9e 8c c7 f7 7f 00 00 e8 fb 06 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c f8 ae 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 61 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78c9e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9e 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 06 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f8 ae 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b61a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 61 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 b8 a1 8c c7 f7 7f 00 00 e8 fb 04 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c f6 ae 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 62 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78ca1b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 a1 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 04 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f6 ae 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b6218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 62 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<int>> lookup<int>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 48 a5 8c c7 f7 7f 00 00 e8 fb 02 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c f4 ae 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 90 62 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78ca548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a5 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 02 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f4 ae 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b6290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 62 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ulong>> lookup<ulong>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d8 a8 8c c7 f7 7f 00 00 e8 fb 00 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c f2 ae 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 63 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78ca8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a8 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 00 af 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f2 ae 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b6308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 63 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<long>> lookup<long>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 68 ac 8c c7 f7 7f 00 00 e8 fb fe ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c f0 ae 5e 48 b8 10 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 80 63 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cac68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ac 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fe ae 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f0 ae 5e}
0054h mov rax,7ff7c625ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 ea 25 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73b6380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 63 3b c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 58 1c c7 f7 7f 00 00 e8 03 f9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 ea ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 a1 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 c4 f8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 e9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 a3 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 85 f8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 e9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 a3 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 46 f8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 e9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 a2 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 07 f8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 e9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 a2 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 c8 f7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 e8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 a2 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 89 f7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba e8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 a3 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 4a f7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b e8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 a2 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 0b f7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c e8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 a3 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 cc f6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd e7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 a3 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 8d f6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be e7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 a2 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 4e f6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f e7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 a2 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 0f f6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 e7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 a2 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 58 1c c7 f7 7f 00 00 e8 d0 f5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 e7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 a3 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 58 1c c7 f7 7f 00 00 e8 94 f5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 e6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 a2 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 58 1c c7 f7 7f 00 00 e8 58 f5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 e6 ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 88 a3 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f9 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 ea ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73aa1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a1 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 f8 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e9 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73aa3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a3 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f8 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 e9 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73aa3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a3 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f8 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e9 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73aa208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a2 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f8 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 e9 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73aa2e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a2 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f7 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e8 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73aa2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a2 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f7 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba e8 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73aa308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a3 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a f7 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b e8 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73aa2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a2 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f7 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c e8 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73aa368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a3 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f6 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e7 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73aa328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a3 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f6 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be e7 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73aa248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a2 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f6 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f e7 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73aa288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 a2 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f f6 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 e7 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73aa268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a2 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 f5 ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e7 ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73aa348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a3 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 f5 ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 e6 ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73aa228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a2 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c58c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f5 ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 e6 ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73aa388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 a3 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 30 55 1c c7 f7 7f 00 00 e8 03 f4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 e5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 a7 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 c4 f3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 e4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 85 f3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 e4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 46 f3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 e4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 a7 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 07 f3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 e4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 c8 f2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 e3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 89 f2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba e3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 4a f2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b e3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 0b f2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c e3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 cc f1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd e2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 8d f1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be e2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 a7 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 4e f1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f e2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 a7 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 0f f1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 e2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 a7 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 55 1c c7 f7 7f 00 00 e8 d0 f0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 e2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 a8 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 55 1c c7 f7 7f 00 00 e8 94 f0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 e1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 a7 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 55 1c c7 f7 7f 00 00 e8 58 f0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 e1 ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 a8 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f4 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e5 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73aa7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a7 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 f3 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e4 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73aa898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a8 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f3 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 e4 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73aa888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 a8 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f3 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e4 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73aa7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 a7 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f3 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 e4 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73aa828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a8 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f2 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e3 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73aa818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a8 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f2 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba e3 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73aa838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a8 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a f2 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b e3 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73aa808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a8 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f2 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c e3 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73aa868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a8 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f1 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e2 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73aa848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a8 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f1 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be e2 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73aa7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a7 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f1 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f e2 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73aa7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a7 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f f1 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 e2 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73aa7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a7 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 f0 ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e2 ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73aa858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a8 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 f0 ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 e1 ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73aa7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a7 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f0 ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 e1 ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73aa878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a8 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 51 1c c7 f7 7f 00 00 e8 03 ef ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 e0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 c4 ee ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 df ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 85 ee ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 df ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 46 ee ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 df ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 07 ee ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 df ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 c8 ed ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 de ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 89 ed ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba de ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 4a ed ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b de ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 0b ed ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c de ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 cc ec ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd dd ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 8d ec ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be dd ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 4e ec ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f dd ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 0f ec ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 dd ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 a8 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 51 1c c7 f7 7f 00 00 e8 d0 eb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 dd ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 a9 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 51 1c c7 f7 7f 00 00 e8 94 eb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 dc ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 a8 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 51 1c c7 f7 7f 00 00 e8 58 eb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 dc ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 88 a9 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ef ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e0 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73aa8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 a8 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 ee ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 df ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73aa9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a9 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 ee ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 df ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73aa998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a9 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 ee ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 df ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73aa8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a8 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ee ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 df ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73aa938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a9 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 ed ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 de ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73aa928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a9 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 ed ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba de ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73aa948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a9 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ed ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b de ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73aa918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a9 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b ed ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c de ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73aa978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a9 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ec ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd dd ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73aa958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a9 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ec ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be dd ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73aa8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a8 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ec ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f dd ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73aa908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a9 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ec ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 dd ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73aa8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a8 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 eb ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 dd ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73aa968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a9 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 eb ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 dc ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73aa8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a8 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c51d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 51 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 eb ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 dc ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73aa988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 a9 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 50 1c c7 f7 7f 00 00 e8 03 ea ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 db ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 c4 e9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 da ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 85 e9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 da ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 46 e9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 da ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 07 e9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 da ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 c8 e8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 d9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 89 e8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba d9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 4a e8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b d9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 0b e8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c d9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 cc e7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd d8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 8d e7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be d8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 a9 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 4e e7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f d8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 0f e7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 d8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 50 1c c7 f7 7f 00 00 e8 d0 e6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 d8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 aa 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 50 1c c7 f7 7f 00 00 e8 94 e6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 d7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 a9 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 50 1c c7 f7 7f 00 00 e8 58 e6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 d7 ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 aa 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ea ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 db ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73aa9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a9 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 e9 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 da ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73aaab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 aa 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 e9 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 da ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73aaaa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 aa 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 e9 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 da ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73aa9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a9 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 e9 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 da ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73aaa48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 aa 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 e8 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 d9 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73aaa38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 aa 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 e8 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba d9 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73aaa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 aa 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a e8 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b d9 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73aaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 aa 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b e8 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c d9 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73aaa88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 aa 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc e7 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd d8 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73aaa68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 aa 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d e7 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be d8 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73aa9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a9 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e e7 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f d8 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73aaa18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 aa 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f e7 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 d8 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73aaa08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 aa 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 e6 ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 d8 ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73aaa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 aa 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 e6 ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d7 ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73aa9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a9 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c5020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 e6 ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 d7 ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73aaa98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 aa 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 65 1c c7 f7 7f 00 00 e8 03 e5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 d6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 c4 e4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 d5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 85 e4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 d5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 46 e4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 d5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 aa 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 07 e4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 d5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ab 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 c8 e3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 d4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ab 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 89 e3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba d4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ab 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 4a e3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b d4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ab 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 0b e3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c d4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 cc e2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd d3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ab 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 8d e2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be d3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ab 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 4e e2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f d3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ab 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 0f e2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 d3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ab 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 65 1c c7 f7 7f 00 00 e8 d0 e1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 d3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 b7 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 65 1c c7 f7 7f 00 00 e8 94 e1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 d2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 aa 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 65 1c c7 f7 7f 00 00 e8 58 e1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 d2 ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 b7 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 e5 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 d6 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73aaad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 aa 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 e4 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 d5 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73ab748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 e4 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 d5 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73ab738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b7 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 e4 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 d5 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73aaae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 aa 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 e4 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 d5 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73aab58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ab 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 e3 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 d4 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73aab48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ab 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 e3 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba d4 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73aab68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ab 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a e3 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b d4 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73aab38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ab 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b e3 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c d4 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73ab718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b7 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc e2 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd d3 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73aab78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ab 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d e2 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be d3 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73aab08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ab 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e e2 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f d3 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73aab28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ab 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f e2 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 d3 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73aab18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ab 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 e1 ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 d3 ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73ab708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b7 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 e1 ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d2 ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73aaaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 aa 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 e1 ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 d2 ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73ab728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 b7 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 62 1c c7 f7 7f 00 00 e8 03 e0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 d1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 c4 df ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 d0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 85 df ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 d0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 46 df ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 d0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 07 df ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 d0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 c8 de ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 cf ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 89 de ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba cf ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 4a de ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b cf ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 0b de ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c cf ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 cc dd ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd ce ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 8d dd ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be ce ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 4e dd ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f ce ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 0f dd ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 ce ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 b7 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 62 1c c7 f7 7f 00 00 e8 d0 dc ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 ce ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 b8 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 62 1c c7 f7 7f 00 00 e8 94 dc ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 cd ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 b7 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 62 1c c7 f7 7f 00 00 e8 58 dc ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 cd ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 b8 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 e0 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 d1 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ab768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 b7 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 df ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 d0 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73ab858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b8 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 df ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 d0 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73ab848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b8 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 df ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 d0 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ab778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 b7 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 df ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 d0 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73ab7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 b7 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 de ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 cf ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73ab7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b7 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 de ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba cf ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73ab7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b7 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a de ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b cf ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73ab7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b7 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b de ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c cf ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73ab828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 b8 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc dd ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ce ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73ab808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d dd ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be ce ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ab798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e dd ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f ce ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ab7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b7 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f dd ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 ce ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ab7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b7 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 dc ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ce ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73ab818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b8 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 dc ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 cd ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73ab788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 b7 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c6220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 dc ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 cd ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73ab838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 b8 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 03 db ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 cc ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 c4 da ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 cb ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 85 da ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 cb ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 46 da ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 cb ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 07 da ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 cb ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 c8 d9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 ca ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 89 d9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba ca ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 4a d9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b ca ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 0b d9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c ca ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 cc d8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd c9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 8d d8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be c9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 4e d8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f c9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 0f d8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 c9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 b8 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 d0 d7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 c9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 b9 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 94 d7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 c8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 b8 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 5b 1c c7 f7 7f 00 00 e8 58 d7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 c8 ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 b9 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 db ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 cc ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ab878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 b8 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 da ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 cb ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73ab968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 b9 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 da ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 cb ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73ab958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b9 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 da ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 cb ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ab888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 b8 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 da ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 cb ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73ab8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b8 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 d9 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ca ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73ab8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 b8 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 d9 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ca ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73ab908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b9 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a d9 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b ca ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73ab8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b8 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d9 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c ca ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73ab938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b9 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc d8 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c9 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73ab918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d d8 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be c9 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ab8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b8 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e d8 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f c9 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ab8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b8 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f d8 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 c9 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ab8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b8 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 d7 ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 c9 ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73ab928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 b9 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 d7 ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c8 ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73ab898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b8 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c5bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5b 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 d7 ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 c8 ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73ab948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 b9 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[953] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 68 1c c7 f7 7f 00 00 e8 03 d6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 c7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 c4 d5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 c6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ba 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 85 d5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 c6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ba 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 46 d5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 c6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 07 d5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 c6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ba 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 c8 d4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 c5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 89 d4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba c5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ba 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 4a d4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b c5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 0b d4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c c5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ba 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 cc d3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd c4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ba 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 8d d3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be c4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 4e d3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f c4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 0f d3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 c4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 b9 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 68 1c c7 f7 7f 00 00 e8 d0 d2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 c4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ba 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 68 1c c7 f7 7f 00 00 e8 94 d2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 c3}
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
002eh mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 d6 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 c7 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ab988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 b9 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 d5 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73aba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 d5 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 c6 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73aba68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ba 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 d5 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c6 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ab998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b9 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 d5 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 c6 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73aba08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ba 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 d4 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c5 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73ab9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b9 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 d4 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c5 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73aba18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ba 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a d4 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c5 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73ab9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 b9 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d4 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c5 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73aba48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ba 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc d3 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c4 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73aba28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ba 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d d3 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be c4 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ab9b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b9 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e d3 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f c4 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ab9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b9 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f d3 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 c4 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ab9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b9 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 d2 ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 c4 ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73aba38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ba 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 d2 ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 c5 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 00 8a 1c c7 f7 7f 00 00 e8 03 d1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 c2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 c6 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 c4 d0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 c1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 c8 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 85 d0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 c1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 c8 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 46 d0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 c1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 c6 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 07 d0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 c1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 c7 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 c8 cf ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 c0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 c7 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 89 cf ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba c0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 c7 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 4a cf ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b c0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 c7 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 0b cf ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c c0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 c8 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 cc ce ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd bf ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 c7 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 8d ce ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be bf ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 c7 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 4e ce ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f bf ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 c7 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 0f ce ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 bf ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 c7 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 8a 1c c7 f7 7f 00 00 e8 d0 cd ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 bf ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 c8 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 8a 1c c7 f7 7f 00 00 e8 94 cd ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 be ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 c6 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 8a 1c c7 f7 7f 00 00 e8 58 cd ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 be ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 c8 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 d1 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 c2 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ac6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c6 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 d0 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c1 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73ac888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c8 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 d0 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 c1 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73ac868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c8 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 d0 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c1 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ac6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c6 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 d0 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 c1 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73ac7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c7 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 cf ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c0 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73ac788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 cf ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c0 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73ac7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c7 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a cf ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c0 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73ac768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c7 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b cf ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c0 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73ac828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c8 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ce ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd bf ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73ac7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c7 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ce ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be bf ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ac708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c7 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ce ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f bf ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ac748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c7 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ce ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 bf ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ac728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c7 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 cd ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 bf ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73ac808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c8 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 cd ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 be ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73ac6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c6 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 cd ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 be ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73ac848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 c8 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 86 1c c7 f7 7f 00 00 e8 03 cc ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 bd ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 c9 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 c4 cb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 bc ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ca 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 85 cb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 bc ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ca 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 46 cb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 bc ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 c9 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 07 cb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 bc ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ca 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 c8 ca ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 bb ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 c9 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 89 ca ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba bb ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ca 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 4a ca ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b bb ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 c9 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 0b ca ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c bb ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ca 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 cc c9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd ba ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ca 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 8d c9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be ba ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 c9 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 4e c9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f ba ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 c9 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 0f c9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 ba ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 c9 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 86 1c c7 f7 7f 00 00 e8 d0 c8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 ba ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ca 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 86 1c c7 f7 7f 00 00 e8 94 c8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 b9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 c9 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 86 1c c7 f7 7f 00 00 e8 58 c8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 b9 ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 ca 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 cc ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 bd ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ac988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c9 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 cb ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 bc ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73aca78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ca 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 cb ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 bc ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73aca68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ca 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 cb ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bc ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ac998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c9 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 cb ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 bc ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73aca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 ca ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 bb ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73ac9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 c9 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 ca ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba bb ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73aca18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ca 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ca ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b bb ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73ac9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c9 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b ca ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c bb ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73aca48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ca 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc c9 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ba ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73aca28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ca 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c9 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be ba ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ac9b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c9 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e c9 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f ba ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ac9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c9 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c9 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 ba ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ac9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c9 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 c8 ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ba ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73aca38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ca 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 c8 ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 b9 ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73ac9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c86d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 86 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 c8 ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 b9 ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73aca58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 ca 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[878] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 e7 1a c7 f7 7f 00 00 e8 03 c7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 b8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 c4 c6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 b7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 85 c6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 b7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 46 c6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 b7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 07 c6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 b7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 c8 c5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 b6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 89 c5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba b6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 4a c5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b b6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 0b c5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c b6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 cc c4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd b5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 8d c4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be b5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 4e c4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f b5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 0f c4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 b5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 d0 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 e7 1a c7 f7 7f 00 00 e8 d0 c3}
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
002eh mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 c7 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b8 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ad058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d0 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 c6 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b7 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73ad148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d1 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c6 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 b7 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73ad138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d1 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c6 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b7 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ad068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d0 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 c6 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b7 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73ad0d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d0 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 c5 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 b6 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73ad0c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d0 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 c5 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b6 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73ad0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d0 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a c5 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b b6 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73ad0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d0 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b c5 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c b6 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73ad118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d1 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc c4 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd b5 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73ad0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c4 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be b5 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ad088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d0 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e c4 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f b5 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ad0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d0 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c4 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 b5 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ad098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d0 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71ae750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 1a c7 f7 7f 00 00}
036bh (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 d0 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 53 1c c7 f7 7f 00 00 e8 03 c2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 b3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 c4 c1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 b2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 85 c1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 b2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 46 c1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 b2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 07 c1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 b2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 c8 c0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 b1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 89 c0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba b1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 4a c0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b b1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 0b c0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c b1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 cc bf ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd b0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 8d bf ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be b0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 4e bf ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f b0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 0f bf ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 b0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 d1 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 53 1c c7 f7 7f 00 00 e8 d0 be ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 b0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d2 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 53 1c c7 f7 7f 00 00 e8 94 be ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 af ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 d1 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 53 1c c7 f7 7f 00 00 e8 58 be ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 af ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 d2 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 c2 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b3 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ad168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d1 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 c1 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b2 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73ad258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d2 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c1 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 b2 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73ad248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d2 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c1 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b2 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ad178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 c1 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b2 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73ad1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d1 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 c0 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 b1 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73ad1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d1 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 c0 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b1 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73ad1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d1 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a c0 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b b1 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73ad1c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d1 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b c0 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c b1 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73ad228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d2 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc bf ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd b0 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73ad208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d2 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d bf ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be b0 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ad198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d1 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e bf ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f b0 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ad1b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d1 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f bf ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 b0 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ad1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d1 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 be ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 b0 ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73ad218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 be ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 af ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73ad188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d1 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c5380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 53 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 be ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 af ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73ad238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 d2 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 93 1c c7 f7 7f 00 00 e8 03 bd ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 ae ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 c4 bc ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 ad ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 85 bc ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 ad ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 46 bc ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 ad ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 07 bc ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 ad ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 c8 bb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 ac ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 89 bb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba ac ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 4a bb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b ac ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 0b bb ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c ac ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 cc ba ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd ab ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 8d ba ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be ab ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 4e ba ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f ab ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 0f ba ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 ab ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 d2 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 93 1c c7 f7 7f 00 00 e8 d0 b9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 ab ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 d3 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 93 1c c7 f7 7f 00 00 e8 94 b9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 aa ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 d2 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 93 1c c7 f7 7f 00 00 e8 58 b9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 aa ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 d3 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 bd ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 ae ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ad278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d2 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 bc ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ad ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73ad368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bc ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ad ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73ad358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d3 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 bc ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ad ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ad288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d2 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 bc ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ad ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73ad2f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d2 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 bb ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ac ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73ad2e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d2 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 bb ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ac ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73ad308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d3 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a bb ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b ac ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73ad2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b bb ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c ac ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73ad338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d3 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ba ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ab ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73ad318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d3 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ba ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be ab ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ad2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d2 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ba ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f ab ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ad2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d2 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ba ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 ab ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ad2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d2 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 b9 ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ab ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73ad328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d3 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b9 ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 aa ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73ad298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d2 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c9360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 93 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b9 ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 aa ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73ad348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 d3 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 30 90 1c c7 f7 7f 00 00 e8 03 b8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 a9 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 c4 b7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 a8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 85 b7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 a8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 46 b7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 a8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 07 b7 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 a8 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 d4 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 c8 b6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 a7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 89 b6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba a7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d4 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 4a b6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b a7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 0b b6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c a7 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 dc 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 cc b5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd a6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 d4 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 8d b5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be a6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 4e b5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f a6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 0f b5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 a6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 d3 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 90 1c c7 f7 7f 00 00 e8 d0 b4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 a6 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 d4 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 90 1c c7 f7 7f 00 00 e8 94 b4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 a5 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 d3 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 90 1c c7 f7 7f 00 00 e8 58 b4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 a5 ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 dc 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 b8 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a9 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ad388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d3 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b7 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 a8 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73add18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 dd 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b7 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 a8 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73add08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 dd 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 b7 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a8 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ad398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d3 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 b7 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a8 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73ad408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d4 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 b6 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a7 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73ad3f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d3 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 b6 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba a7 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73ad418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d4 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a b6 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b a7 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73ad3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d3 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b b6 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c a7 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73adce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 dc 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc b5 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd a6 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73ad428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d4 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b5 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be a6 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ad3b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d3 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e b5 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f a6 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ad3d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d3 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f b5 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 a6 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ad3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d3 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 b4 ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a6 ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73ad438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d4 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b4 ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 a5 ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73ad3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d3 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c9030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b4 ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 a5 ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73adcf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 dc 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 99 1c c7 f7 7f 00 00 e8 03 b3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 a4 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 c4 b2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 a3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 85 b2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 a3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 46 b2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 a3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 07 b2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 a3 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 c8 b1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 a2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 89 b1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba a2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 4a b1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b a2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 0b b1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c a2 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 cc b0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd a1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 8d b0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be a1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 4e b0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f a1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 0f b0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 a1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 dd 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 99 1c c7 f7 7f 00 00 e8 d0 af ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 a1 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 dd 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 99 1c c7 f7 7f 00 00 e8 94 af ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 a0 ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 dd 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 99 1c c7 f7 7f 00 00 e8 58 af ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 a0 ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 de 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 b3 ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a4 ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73add38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 dd 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b2 ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 a3 ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73ade28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 de 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b2 ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 a3 ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73ade18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 de 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 b2 ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a3 ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73add48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 dd 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 b2 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a3 ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73addb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 dd 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 b1 ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a2 ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73adda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 b1 ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba a2 ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73addc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dd 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a b1 ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b a2 ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73add98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 dd 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b b1 ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c a2 ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73addf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 dd 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc b0 ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd a1 ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73addd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 dd 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b0 ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be a1 ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73add68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 dd 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e b0 ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f a1 ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73add88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f b0 ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 a1 ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73add78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 dd 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 af ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a1 ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73adde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 dd 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 af ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 a0 ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73add58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 dd 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c99c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 99 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 af ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 a0 ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73ade08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 de 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 96 1c c7 f7 7f 00 00 e8 03 ae ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 9f ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 c4 ad ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 9e ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 df 3a c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 85 ad ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 9e ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 df 3a c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 46 ad ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 9e ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 07 ad ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 9e ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 c8 ac ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 9d ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 89 ac ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 9d ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 4a ac ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 9d ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 0b ac ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 9d ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 df 3a c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 cc ab ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 9c ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 8d ab ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 9c ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 4e ab ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 9c ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 0f ab ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 9c ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 de 3a c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 96 1c c7 f7 7f 00 00 e8 d0 aa ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 9c ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 de 3a c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 96 1c c7 f7 7f 00 00 e8 94 aa ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 9b ae 5e 48 b9 00 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 de 3a c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 96 1c c7 f7 7f 00 00 e8 58 aa ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 9b ae 5e 48 b8 00 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 df 3a c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ae ae 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 9f ae 5e}
004ch mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73ade48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 de 3a c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 ad ae 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 9e ae 5e}
008bh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73adf38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 df 3a c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 ad ae 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 9e ae 5e}
00cah mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c73adf28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 3a c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 ad ae 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 9e ae 5e}
0109h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73ade58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 de 3a c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ad ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 9e ae 5e}
0148h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73adec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 de 3a c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 ac ae 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 9d ae 5e}
0187h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73adeb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 de 3a c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 ac ae 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 9d ae 5e}
01c6h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73aded8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 de 3a c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ac ae 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 9d ae 5e}
0205h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73adea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 de 3a c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b ac ae 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 9d ae 5e}
0244h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73adf08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 df 3a c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ab ae 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 9c ae 5e}
0283h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73adee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 de 3a c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ab ae 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 9c ae 5e}
02c2h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73ade78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 de 3a c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ab ae 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 9c ae 5e}
0301h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73ade98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 de 3a c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ab ae 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 9c ae 5e}
0340h mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73ade88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 de 3a c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 aa ae 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 9c ae 5e}
037fh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73adef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 de 3a c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 aa ae 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 9b ae 5e}
03bbh mov rcx,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 25 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73ade68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 de 3a c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c71c9690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 1c c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 aa ae 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 9b ae 5e}
03f7h mov rax,7ff7c625e200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e2 25 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 df 3a c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1230] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 0d 8c c7 f7 7f 00 00 e8 01 a5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 96 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 c2 a4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 95 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 83 a4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 95 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 c5 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 44 a4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 95 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 c5 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 05 a4 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 95 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 c5 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 c6 a3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 94 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 c5 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 87 a3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 94 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 c5 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 48 a3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 94 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 c5 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 09 a3 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 94 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 c5 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 ca a2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 93 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 c5 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 8b a2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 93 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 c4 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 4c a2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 93 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 c4 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 0d a2 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 93 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 c4 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 ce a1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 92 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 c4 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 8f a1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 92 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 c4 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 50 a1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 92 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 c4 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 11 a1 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 92 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 c4 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 d2 a0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 92 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 c4 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 0d 8c c7 f7 7f 00 00 e8 93 a0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 91 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 c3}
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
0030h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a5 ae 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 96 ae 5e}
004eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73bc628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c6 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 a4 ae 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 95 ae 5e}
008dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73bc608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c6 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 a4 ae 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 95 ae 5e}
00cch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73bc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a4 ae 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 95 ae 5e}
010bh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73bc5c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c5 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 a4 ae 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 95 ae 5e}
014ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73bc5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c5 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 a3 ae 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 94 ae 5e}
0189h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73bc588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 a3 ae 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 94 ae 5e}
01c8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73bc568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c5 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 a3 ae 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 94 ae 5e}
0207h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73bc548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c5 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a3 ae 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 94 ae 5e}
0246h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73bc528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca a2 ae 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 93 ae 5e}
0285h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73bc508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c5 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b a2 ae 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 93 ae 5e}
02c4h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73bc4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c4 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c a2 ae 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 93 ae 5e}
0303h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73bc4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c4 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d a2 ae 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 93 ae 5e}
0342h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73bc4a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c4 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce a1 ae 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 92 ae 5e}
0381h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73bc488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c4 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a1 ae 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 92 ae 5e}
03c0h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73bc468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c4 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 a1 ae 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 92 ae 5e}
03ffh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73bc448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c4 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 a1 ae 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 92 ae 5e}
043eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73bc428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c4 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 a0 ae 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 92 ae 5e}
047dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73bc408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c4 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c0d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a0 ae 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 91 ae 5e}
04bch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 11 8c c7 f7 7f 00 00 e8 11 99 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 8a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 cf 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 d2 98 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 8a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 cf 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 93 98 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 89 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 cf 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 54 98 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 89 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 cf 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 15 98 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 89 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 cf 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 d6 97 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 89 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 cf 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 97 97 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 88 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 cf 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 58 97 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 88 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 cf 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 19 97 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 88 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 cf 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 da 96 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 88 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 c7 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 9b 96 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 87 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 c7 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 5c 96 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 87 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 c7 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 1d 96 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 87 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 c7 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 de 95 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 87 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 c7 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 9f 95 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 86 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 c7 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 60 95 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 86 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 21 95 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 86 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 e2 94 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 86 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 a3 94 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 85 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 64 94 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 85 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 25 94 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 85 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 e6 93 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 85 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 a7 93 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 84 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 68 93 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 84 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 c6 3b c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 11 8c c7 f7 7f 00 00 e8 29 93 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 84 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 c6 3b c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 11 8c c7 f7 7f 00 00 e8 ed 92 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 84 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 c6 3b c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 11 8c c7 f7 7f 00 00 e8 b1 92 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 83 ae 5e 48 b8 50 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 c6 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 99 ae 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 8a ae 5e}
004eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73bcfd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 cf 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 98 ae 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 8a ae 5e}
008dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73bcfc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cf 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 98 ae 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 89 ae 5e}
00cch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73bcfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cf 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 98 ae 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 89 ae 5e}
010bh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73bcfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 cf 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 98 ae 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 89 ae 5e}
014ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73bcf90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 cf 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 97 ae 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 89 ae 5e}
0189h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73bcf80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cf 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 97 ae 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 88 ae 5e}
01c8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73bcf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cf 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 97 ae 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 88 ae 5e}
0207h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73bcf60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 cf 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 97 ae 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 88 ae 5e}
0246h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73bcf50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cf 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 96 ae 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 88 ae 5e}
0285h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73bc758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c7 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 96 ae 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 87 ae 5e}
02c4h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73bc748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c7 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 96 ae 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 87 ae 5e}
0303h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73bc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 c7 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 96 ae 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 87 ae 5e}
0342h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73bc728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c7 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 95 ae 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 87 ae 5e}
0381h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73bc718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c7 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 95 ae 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 86 ae 5e}
03c0h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73bc708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c7 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 95 ae 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 86 ae 5e}
03ffh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73bc6f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 c6 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 95 ae 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 86 ae 5e}
043eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73bc6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c6 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 94 ae 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 86 ae 5e}
047dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73bc6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c6 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 94 ae 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 85 ae 5e}
04bch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73bc6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c6 3b c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 94 ae 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 85 ae 5e}
04fbh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73bc6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c6 3b c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 94 ae 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 85 ae 5e}
053ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73bc6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c6 3b c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 93 ae 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 85 ae 5e}
0579h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73bc698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c6 3b c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 93 ae 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 84 ae 5e}
05b8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73bc688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c6 3b c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 93 ae 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 84 ae 5e}
05f7h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73bc678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c6 3b c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 93 ae 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 84 ae 5e}
0636h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73bc668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c6 3b c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 92 ae 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 84 ae 5e}
0672h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73bc658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c6 3b c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c11b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 11 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 92 ae 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 83 ae 5e}
06aeh mov rax,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 ea 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73bc648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 c6 3b c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1194] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 14 8c c7 f7 7f 00 00 e8 31 91 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 82 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 f2 90 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 82 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 b3 90 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 81 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 74 90 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 81 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 35 90 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 81 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 f6 8f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 81 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 b7 8f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 80 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 78 8f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 80 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 39 8f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 80 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 fa 8e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 80 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 d0 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 bb 8e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 7f ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 d0 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 7c 8e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 7f ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 d0 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 3d 8e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 7f ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 d0 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 fe 8d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 7f ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 d0 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 bf 8d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 7e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 d0 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 80 8d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 7e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 d0 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 41 8d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 7e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 d0 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 02 8d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 7e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 d0 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 14 8c c7 f7 7f 00 00 e8 c3}
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
0030h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 91 ae 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 82 ae 5e}
004eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73bd180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d1 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 90 ae 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 82 ae 5e}
008dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73bd170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d1 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 90 ae 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 81 ae 5e}
00cch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73bd160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d1 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 90 ae 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 81 ae 5e}
010bh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73bd150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d1 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 90 ae 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 81 ae 5e}
014ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73bd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 8f ae 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 81 ae 5e}
0189h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73bd130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d1 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 8f ae 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 80 ae 5e}
01c8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73bd120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d1 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 8f ae 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 80 ae 5e}
0207h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73bd110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d1 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 8f ae 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 80 ae 5e}
0246h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73bd100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d1 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 8e ae 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 80 ae 5e}
0285h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73bd0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d0 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 8e ae 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 7f ae 5e}
02c4h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73bd0e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d0 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 8e ae 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 7f ae 5e}
0303h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73bd0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d0 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 8e ae 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 7f ae 5e}
0342h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73bd0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d0 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 8d ae 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 7f ae 5e}
0381h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73bd0b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d0 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 8d ae 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 7e ae 5e}
03c0h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73bd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 8d ae 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 7e ae 5e}
03ffh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73bd090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d0 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 8d ae 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 7e ae 5e}
043eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73bd080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d0 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 8d ae 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 7e ae 5e}
047dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73bd070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d0 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c1428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 14 8c c7 f7 7f 00 00}
04a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<short>> lookup<short>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 16 8c c7 f7 7f 00 00 e8 51 89 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 7a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 d3 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 12 89 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 7a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 d3 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 d3 88 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 7a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 d3 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 94 88 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 79 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 d3 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 55 88 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 79 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 16 88 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 79 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 d7 87 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 79 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 98 87 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 78 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 59 87 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 78 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 1a 87 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 78 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 db 86 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 78 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 9c 86 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 77 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 5d 86 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 77 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 1e 86 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 77 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 df 85 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 77 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 a0 85 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 76 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 61 85 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 76 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 22 85 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 76 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 e3 84 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 76 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 a4 84 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 75 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 d2 3b c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 65 84 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 75 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 26 84 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 75 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 e7 83 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 75 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 a8 83 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 74 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 d1 3b c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 16 8c c7 f7 7f 00 00 e8 69 83 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 74 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 d1 3b c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 16 8c c7 f7 7f 00 00 e8 2d 83 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 74 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 d1 3b c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 16 8c c7 f7 7f 00 00 e8 f1 82 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 74 ae 5e 48 b8 50 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 90 d1 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 89 ae 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 7a ae 5e}
004eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73bd330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d3 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 89 ae 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 7a ae 5e}
008dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73bd320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d3 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 88 ae 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 7a ae 5e}
00cch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73bd310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d3 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 88 ae 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 79 ae 5e}
010bh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73bd300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d3 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 88 ae 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 79 ae 5e}
014ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73bd2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d2 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 88 ae 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 79 ae 5e}
0189h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73bd2e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d2 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 87 ae 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 79 ae 5e}
01c8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73bd2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d2 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 87 ae 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 78 ae 5e}
0207h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73bd2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d2 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 87 ae 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 78 ae 5e}
0246h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73bd2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d2 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 87 ae 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 78 ae 5e}
0285h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73bd2a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d2 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 86 ae 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 78 ae 5e}
02c4h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73bd290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d2 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 86 ae 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 77 ae 5e}
0303h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73bd280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d2 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 86 ae 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 77 ae 5e}
0342h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73bd270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d2 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 86 ae 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 77 ae 5e}
0381h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73bd260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d2 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 85 ae 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 77 ae 5e}
03c0h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73bd250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d2 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 85 ae 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 76 ae 5e}
03ffh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73bd240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d2 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 85 ae 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 76 ae 5e}
043eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73bd230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d2 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 85 ae 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 76 ae 5e}
047dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73bd220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d2 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 84 ae 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 76 ae 5e}
04bch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73bd210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d2 3b c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 84 ae 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 75 ae 5e}
04fbh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73bd200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d2 3b c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 84 ae 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 75 ae 5e}
053ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73bd1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d1 3b c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 84 ae 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 75 ae 5e}
0579h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73bd1e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d1 3b c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 83 ae 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 75 ae 5e}
05b8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73bd1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d1 3b c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 83 ae 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 74 ae 5e}
05f7h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73bd1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d1 3b c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 83 ae 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 74 ae 5e}
0636h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73bd1b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d1 3b c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 83 ae 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 74 ae 5e}
0672h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73bd1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d1 3b c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 82 ae 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 74 ae 5e}
06aeh mov rax,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 ea 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73bd190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 d1 3b c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 19 8c c7 f7 7f 00 00 e8 61 7d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 6e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 22 7d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 6e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 e3 7c ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 6e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 a4 7c ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 6d ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 65 7c ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 6d ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 26 7c ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 6d ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 e7 7b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 6d ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 a8 7b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 6c ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 69 7b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 6c ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 2a 7b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 6c ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 eb 7a ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 6c ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 ac 7a ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 6b ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 6d 7a ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 6b ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 2e 7a ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 6b ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 ef 79 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 6b ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 b0 79 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 6a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 71 79 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 6a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 32 79 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 6a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 f3 78 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 6a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 b4 78 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 69 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 75 78 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 69 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 36 78 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 69 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 f7 77 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 69 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 b8 77 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 68 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 eb 3b c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 19 8c c7 f7 7f 00 00 e8 79 77 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 68 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 eb 3b c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 19 8c c7 f7 7f 00 00 e8 3d 77 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 68 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 eb 3b c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 19 8c c7 f7 7f 00 00 e8 01 77 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 68 ae 5e 48 b8 50 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 40 d3 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 7d ae 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 6e ae 5e}
004eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73bec90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ec 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 7d ae 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 6e ae 5e}
008dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73bec80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ec 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 7c ae 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 6e ae 5e}
00cch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73bec70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ec 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 7c ae 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 6d ae 5e}
010bh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73bec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ec 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 7c ae 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 6d ae 5e}
014ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73bec50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ec 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 7c ae 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 6d ae 5e}
0189h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73bec40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ec 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 7b ae 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 6d ae 5e}
01c8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73bec30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ec 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 7b ae 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 6c ae 5e}
0207h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73bec20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ec 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 7b ae 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 6c ae 5e}
0246h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73bec10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ec 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 7b ae 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 6c ae 5e}
0285h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73bec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 7a ae 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 6c ae 5e}
02c4h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73bebf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 eb 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 7a ae 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 6b ae 5e}
0303h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73bebe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 eb 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 7a ae 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 6b ae 5e}
0342h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73bebd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 eb 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 7a ae 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 6b ae 5e}
0381h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73bebc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 eb 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 79 ae 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 6b ae 5e}
03c0h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73bebb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 eb 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 79 ae 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 6a ae 5e}
03ffh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73beba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 eb 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 79 ae 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 6a ae 5e}
043eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73beb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 eb 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 79 ae 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 6a ae 5e}
047dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73beb80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 eb 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 78 ae 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 6a ae 5e}
04bch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73beb70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 eb 3b c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 78 ae 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 69 ae 5e}
04fbh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73beb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 eb 3b c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 78 ae 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 69 ae 5e}
053ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73beb50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 eb 3b c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 78 ae 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 69 ae 5e}
0579h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73beb40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 eb 3b c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 77 ae 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 69 ae 5e}
05b8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73beb30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 eb 3b c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 77 ae 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 68 ae 5e}
05f7h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73beb20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 eb 3b c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 77 ae 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 68 ae 5e}
0636h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73beb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 eb 3b c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 77 ae 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 68 ae 5e}
0672h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73beb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 3b c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c1908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 19 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 77 ae 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 68 ae 5e}
06aeh mov rax,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 ea 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73bd340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 d3 3b c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 1b 8c c7 f7 7f 00 00 e8 81 75 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 66 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 42 75 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 66 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 03 75 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 66 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 c4 74 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 65 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 85 74 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 65 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 46 74 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 65 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 07 74 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 65 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 c8 73 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 64 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 89 73 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 64 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 4a 73 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 64 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 0b 73 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 64 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 cc 72 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 63 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 8d 72 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 63 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 4e 72 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 63 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 0f 72 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 63 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 d0 71 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 63 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 91 71 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 62 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 52 71 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 62 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 13 71 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 62 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 d4 70 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 62 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 95 70 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 61 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 ed 3b c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 56 70 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 61 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 17 70 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 61 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 d8 6f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 61 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 ec 3b c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 1b 8c c7 f7 7f 00 00 e8 99 6f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 60 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 ec 3b c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 1b 8c c7 f7 7f 00 00 e8 5d 6f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 60 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 ec 3b c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 1b 8c c7 f7 7f 00 00 e8 21 6f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 60 ae 5e 48 b8 50 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 ec 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 75 ae 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 66 ae 5e}
004eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73bee40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ee 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 75 ae 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 66 ae 5e}
008dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73bee30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ee 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 75 ae 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 66 ae 5e}
00cch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73bee20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ee 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 74 ae 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 65 ae 5e}
010bh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73bee10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ee 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 74 ae 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 65 ae 5e}
014ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73bee00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ee 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 74 ae 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 65 ae 5e}
0189h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73bedf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ed 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 74 ae 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 65 ae 5e}
01c8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73bede0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ed 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 73 ae 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 64 ae 5e}
0207h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73bedd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ed 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 73 ae 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 64 ae 5e}
0246h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73bedc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ed 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 73 ae 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 64 ae 5e}
0285h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73bedb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ed 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 73 ae 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 64 ae 5e}
02c4h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73beda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ed 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 72 ae 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 63 ae 5e}
0303h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73bed90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ed 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 72 ae 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 63 ae 5e}
0342h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73bed80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ed 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 72 ae 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 63 ae 5e}
0381h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73bed70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ed 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 72 ae 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 63 ae 5e}
03c0h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73bed60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ed 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 71 ae 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 63 ae 5e}
03ffh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73bed50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ed 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 71 ae 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 62 ae 5e}
043eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73bed40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ed 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 71 ae 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 62 ae 5e}
047dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73bed30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ed 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 71 ae 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 62 ae 5e}
04bch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73bed20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ed 3b c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 70 ae 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 62 ae 5e}
04fbh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73bed10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ed 3b c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 70 ae 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 61 ae 5e}
053ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73bed00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ed 3b c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 70 ae 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 61 ae 5e}
0579h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73becf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ec 3b c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 70 ae 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 61 ae 5e}
05b8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73bece0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ec 3b c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 6f ae 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 61 ae 5e}
05f7h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73becd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ec 3b c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 6f ae 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 60 ae 5e}
0636h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73becc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ec 3b c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 6f ae 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 60 ae 5e}
0672h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73becb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ec 3b c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 6f ae 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 60 ae 5e}
06aeh mov rax,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 ea 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73beca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 ec 3b c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ulong>> lookup<ulong>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 91 69 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 5a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 52 69 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 5a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 13 69 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 5a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 d4 68 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 5a ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 95 68 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 59 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 56 68 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 59 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 17 68 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 59 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 d8 67 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 59 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 99 67 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 58 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 5a 67 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 58 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 1b 67 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 58 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 dc 66 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 58 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 9d 66 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 57 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 ff 3b c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 5e 66 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 57 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 fe 3b c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 1f 66 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 57 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 fe 3b c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 e0 65 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 57 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 fe 3b c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 a1 65 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 56 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 62 65 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 56 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 23 65 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 56 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 e4 64 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 56 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 a5 64 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 55 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 66 64 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 55 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 27 64 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 55 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 e8 63 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 55 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 ee 3b c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 a9 63 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 54 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 ee 3b c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 6d 63 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 54 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 ee 3b c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 1d 8c c7 f7 7f 00 00 e8 31 63 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 54 ae 5e 48 b8 50 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 50 ee 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 69 ae 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 5a ae 5e}
004eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73bffc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ff 3b c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 69 ae 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 5a ae 5e}
008dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73bffb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ff 3b c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 69 ae 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 5a ae 5e}
00cch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73bffa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ff 3b c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 68 ae 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 5a ae 5e}
010bh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73bff90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ff 3b c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 68 ae 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 59 ae 5e}
014ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73bff80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ff 3b c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 68 ae 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 59 ae 5e}
0189h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73bff70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ff 3b c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 68 ae 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 59 ae 5e}
01c8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73bff60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ff 3b c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 67 ae 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 59 ae 5e}
0207h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73bff50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ff 3b c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 67 ae 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 58 ae 5e}
0246h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73bff40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ff 3b c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 67 ae 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 58 ae 5e}
0285h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73bff30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ff 3b c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 67 ae 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 58 ae 5e}
02c4h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73bff20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ff 3b c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 66 ae 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 58 ae 5e}
0303h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73bff10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ff 3b c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 66 ae 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 57 ae 5e}
0342h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73bff00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ff 3b c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 66 ae 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 57 ae 5e}
0381h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73bfef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fe 3b c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 66 ae 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 57 ae 5e}
03c0h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73bfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 3b c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 65 ae 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 57 ae 5e}
03ffh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73bfed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fe 3b c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 65 ae 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 56 ae 5e}
043eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73beef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ee 3b c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 65 ae 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 56 ae 5e}
047dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73beee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ee 3b c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 65 ae 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 56 ae 5e}
04bch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73beed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ee 3b c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 64 ae 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 56 ae 5e}
04fbh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73beec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ee 3b c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 64 ae 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 55 ae 5e}
053ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73beeb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ee 3b c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 64 ae 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 55 ae 5e}
0579h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73beea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ee 3b c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 64 ae 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 55 ae 5e}
05b8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73bee90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ee 3b c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 63 ae 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 55 ae 5e}
05f7h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73bee80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ee 3b c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 63 ae 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 54 ae 5e}
0636h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73bee70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ee 3b c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 63 ae 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 54 ae 5e}
0672h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73bee60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ee 3b c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c1de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1d 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 63 ae 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 54 ae 5e}
06aeh mov rax,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 ea 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73bee50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 ee 3b c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<long>> lookup<long>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 20 8c c7 f7 7f 00 00 e8 b1 61 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 52 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 01 3c c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 72 61 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 52 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 01 3c c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 33 61 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 52 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 01 3c c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 f4 60 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 52 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 01 3c c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 b5 60 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 51 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 01 3c c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 76 60 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 51 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 01 3c c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 37 60 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 51 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 01 3c c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 f8 5f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 51 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 01 3c c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 b9 5f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 50 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 7a 5f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 50 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 3b 5f ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 50 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 fc 5e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 50 ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 bd 5e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 4f ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 7e 5e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 4f ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 3f 5e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 4f ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 00 5e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 4f ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 c1 5d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 4e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 82 5d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 4e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 43 5d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 4e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 04 5d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 4e ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 c5 5c ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 4d ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 86 5c ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 4d ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 47 5c ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 4d ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 08 5c ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 4d ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 00 3c c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 20 8c c7 f7 7f 00 00 e8 c9 5b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 4c ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 ff 3b c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 20 8c c7 f7 7f 00 00 e8 8d 5b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 4c ae 5e 48 b9 50 ea 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 ff 3b c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 20 8c c7 f7 7f 00 00 e8 51 5b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 4c ae 5e 48 b8 50 ea 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 ff 3b c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 61 ae 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 52 ae 5e}
004eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73c0170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 01 3c c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 61 ae 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 52 ae 5e}
008dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73c0160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 01 3c c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 61 ae 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 52 ae 5e}
00cch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73c0150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 01 3c c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 60 ae 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 52 ae 5e}
010bh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73c0140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 01 3c c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 60 ae 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 51 ae 5e}
014ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73c0130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 01 3c c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 60 ae 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 51 ae 5e}
0189h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73c0120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 01 3c c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 60 ae 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 51 ae 5e}
01c8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73c0110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 01 3c c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 5f ae 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 51 ae 5e}
0207h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73c0100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 01 3c c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 5f ae 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 50 ae 5e}
0246h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73c00f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 00 3c c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 5f ae 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 50 ae 5e}
0285h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73c00e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 00 3c c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 5f ae 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 50 ae 5e}
02c4h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c73c00d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 00 3c c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 5e ae 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 50 ae 5e}
0303h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c73c00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 3c c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 5e ae 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 4f ae 5e}
0342h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73c00b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 00 3c c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 5e ae 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 4f ae 5e}
0381h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73c00a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 00 3c c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 5e ae 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 4f ae 5e}
03c0h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73c0090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 00 3c c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 5e ae 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 4f ae 5e}
03ffh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73c0080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 00 3c c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 5d ae 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 4e ae 5e}
043eh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73c0070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 00 3c c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 5d ae 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 4e ae 5e}
047dh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73c0060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 00 3c c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 5d ae 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 4e ae 5e}
04bch mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73c0050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 00 3c c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 5d ae 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 4e ae 5e}
04fbh mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73c0040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 00 3c c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 5c ae 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 4d ae 5e}
053ah mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73c0030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 00 3c c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 5c ae 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 4d ae 5e}
0579h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73c0020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 3c c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 5c ae 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 4d ae 5e}
05b8h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73c0010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 00 3c c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 5c ae 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 4d ae 5e}
05f7h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73c0000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 00 3c c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 5b ae 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 4c ae 5e}
0636h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73bfff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ff 3b c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 5b ae 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 4c ae 5e}
0672h mov rcx,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 25 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73bffe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ff 3b c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c2058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 5b ae 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 4c ae 5e}
06aeh mov rax,7ff7c625ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 ea 25 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73bffd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 ff 3b c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
