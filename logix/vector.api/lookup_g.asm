------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 88 a9 6a c7 f7 7f 00 00 e8 a8 30 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 21 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 74 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76aa988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 a9 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 30 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 21 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73774d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 74 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 38 d7 6a c7 f7 7f 00 00 e8 68 2f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 20 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 70 75 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ad738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d7 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 2f b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 20 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7377570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 75 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ushort>> lookup<ushort>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 38 ab 6a c7 f7 7f 00 00 e8 28 2e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 1f b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 75 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76aab38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ab 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 2e b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 1f b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73775c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 75 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<short>> lookup<short>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 58 b5 6a c7 f7 7f 00 00 e8 e8 2c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 1e b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 10 76 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ab558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b5 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 2c b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 1e b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7377610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 76 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<uint>> lookup<uint>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 e8 ac 6a c7 f7 7f 00 00 e8 a8 2b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 1c b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 60 76 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76aace8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ac 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 2b b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 1c b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7377660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 76 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<int>> lookup<int>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 08 b7 6a c7 f7 7f 00 00 e8 68 2a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 1b b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 58 96 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ab708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b7 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 2a b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 1b b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7379658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 96 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ulong>> lookup<ulong>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 b8 8c 6a c7 f7 7f 00 00 e8 28 29 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 1a b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 96 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76a8cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8c 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 29 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 1a b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73796a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 96 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<long>> lookup<long>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 e8 d8 6a c7 f7 7f 00 00 e8 e8 27 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 19 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 96 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ad8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d8 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 27 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 19 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73796f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 96 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<byte>> lookup<byte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 48 b0 6a c7 f7 7f 00 00 e8 a8 26 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 17 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 97 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ab048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b0 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 26 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 17 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73797e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 97 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 98 da 6a c7 f7 7f 00 00 e8 68 25 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 16 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 88 98 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ada98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 da 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 25 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 16 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7379888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 98 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ushort>> lookup<ushort>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 f8 b1 6a c7 f7 7f 00 00 e8 28 24 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 15 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 98 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ab1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b1 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 24 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 15 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73798d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 98 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<short>> lookup<short>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 b8 b8 6a c7 f7 7f 00 00 e8 e8 22 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 14 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 28 99 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ab8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b8 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 22 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 14 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7379928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 99 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<uint>> lookup<uint>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 a8 b3 6a c7 f7 7f 00 00 e8 a8 21 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 12 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 78 99 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76ab3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b3 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 21 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 12 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7379978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 99 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<int>> lookup<int>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 68 ba 6a c7 f7 7f 00 00 e8 68 20 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 11 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 99 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76aba68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ba 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 20 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 11 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73799c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 99 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ulong>> lookup<ulong>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 98 ae 6a c7 f7 7f 00 00 e8 28 1f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 10 b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 18 9a 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76aae98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ae 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 1f b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 10 b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7379a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 9a 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<long>> lookup<long>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_8u[94] = {57 56 53 48 83 ec 20 8b f2 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 68 f7 6a c7 f7 7f 00 00 e8 e8 1d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 0f b2 5e 48 b8 40 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 48 a7 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c76af768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f7 6a c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 1d b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 0f b2 5e}
0037h mov rax,7ff7c624e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c737a748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 a7 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 4c 6a c7 f7 7f 00 00 e8 91 1c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 0d b2 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 58 a8 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 1c b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 0d b2 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737a858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 a8 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 48 6a c7 f7 7f 00 00 e8 e1 1a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 0c b2 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 a8 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 1a b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 0c b2 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737a8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 a8 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 45 6a c7 f7 7f 00 00 e8 31 19 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 0a b2 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 18 a9 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 19 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 0a b2 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737a918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 a9 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 43 6a c7 f7 7f 00 00 e8 81 17 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 08 b2 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 58 a9 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 17 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 08 b2 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737a958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 a9 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 57 6a c7 f7 7f 00 00 e8 d1 15 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 07 b2 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 98 a9 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 15 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 07 b2 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737a998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 a9 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 54 6a c7 f7 7f 00 00 e8 21 14 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 05 b2 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 a9 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 14 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 05 b2 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737a9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 a9 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 4f 6a c7 f7 7f 00 00 e8 71 12 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 03 b2 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 18 aa 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 12 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 03 b2 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737aa18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 aa 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 5a 6a c7 f7 7f 00 00 e8 c1 10 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 01 b2 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 aa 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 10 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 01 b2 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737aad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 aa 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 7a 6a c7 f7 7f 00 00 e8 11 0b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 fc b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 ba 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 0b b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fc b1 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737bac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 ba 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 77 6a c7 f7 7f 00 00 e8 61 09 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 fa b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 48 bb 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 09 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fa b1 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737bb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 bb 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 db 68 c7 f7 7f 00 00 e8 b1 07 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 f8 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 88 bb 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 07 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 f8 b1 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737bb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 bb 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 47 6a c7 f7 7f 00 00 e8 01 06 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 f7 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 bb 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 06 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f7 b1 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737bbc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 bb 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 84 6a c7 f7 7f 00 00 e8 51 04 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 f5 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 08 bc 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 04 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f5 b1 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737bc08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 bc 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 81 6a c7 f7 7f 00 00 e8 a1 02 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 f3 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 48 bc 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 02 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f3 b1 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737bc48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 bc 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 8b 6a c7 f7 7f 00 00 e8 f1 00 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 f2 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 88 bc 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 00 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f2 b1 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737bc88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 bc 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_8u[117] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 e7 00 00 00 8b c9 48 8d 05 5f 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 87 6a c7 f7 7f 00 00 e8 41 ff b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 f0 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 c8 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ff b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 f0 b1 5e}
004eh mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005ch mov rax,7ff7c737c8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 c8 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<byte>> lookup<byte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 08 b1 8c c7 f7 7f 00 00 e8 8b fd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc ee b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 10 5f 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cb108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b1 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b fd b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ee b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7385f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 5f 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<sbyte>> lookup<sbyte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 78 b6 8c c7 f7 7f 00 00 e8 8b fb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc ec b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 5f 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cb678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 b6 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b fb b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ec b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7385fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 5f 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ushort>> lookup<ushort>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 08 ba 8c c7 f7 7f 00 00 e8 8b f9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc ea b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 50 60 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cba08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ba 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f9 b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ea b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7386050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 60 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<short>> lookup<short>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 98 bd 8c c7 f7 7f 00 00 e8 8b f7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc e8 b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 60 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cbd98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 bd 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f7 b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e8 b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73860c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 60 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<uint>> lookup<uint>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 28 c1 8c c7 f7 7f 00 00 e8 8b f1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc e2 b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 40 61 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cc128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c1 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f1 b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e2 b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7386140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 61 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<int>> lookup<int>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 b8 c4 8c c7 f7 7f 00 00 e8 8b ef b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc e0 b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 40 77 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cc4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c4 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ef b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e0 b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7387740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 77 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ulong>> lookup<ulong>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 48 c8 8c c7 f7 7f 00 00 e8 8b ed b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc de b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 77 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cc848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c8 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ed b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc de b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73877b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 77 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<long>> lookup<long>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d8 cb 8c c7 f7 7f 00 00 e8 8b eb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc dc b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 30 78 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78ccbd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 cb 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b eb b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc dc b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7387830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 78 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<byte>> lookup<byte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 80 d3 8c c7 f7 7f 00 00 e8 8b e9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc da b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 50 79 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cd380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d3 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b e9 b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc da b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7387950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 79 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<sbyte>> lookup<sbyte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 f0 d8 8c c7 f7 7f 00 00 e8 8b e7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc d8 b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 18 7a 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cd8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d8 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b e7 b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc d8 b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7387a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 7a 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ushort>> lookup<ushort>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 80 dc 8c c7 f7 7f 00 00 e8 8b e5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc d6 b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 90 7a 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cdc80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 dc 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b e5 b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc d6 b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7387a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 7a 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<short>> lookup<short>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 10 e0 8c c7 f7 7f 00 00 e8 8b df b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc d0 b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 10 89 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78ce010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e0 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b df b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc d0 b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7388910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 89 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 a0 e3 8c c7 f7 7f 00 00 e8 8b dd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc ce b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 88 89 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78ce3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b dd b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ce b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7388988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 89 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<int>> lookup<int>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 30 e7 8c c7 f7 7f 00 00 e8 8b db b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc cc b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 00 8a 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78ce730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e7 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b db b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc cc b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7388a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 8a 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ulong>> lookup<ulong>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 c0 ea 8c c7 f7 7f 00 00 e8 8b d9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc ca b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 78 8a 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78ceac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ea 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b d9 b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ca b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7388a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 8a 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<long>> lookup<long>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_8u[123] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 50 ee 8c c7 f7 7f 00 00 e8 8b d7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc c8 b1 5e 48 b8 10 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 8a 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c78cee50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ee 8c c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b d7 b1 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc c8 b1 5e}
0054h mov rax,7ff7c624e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7388af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 8a 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 28 4c 6a c7 f7 7f 00 00 e8 93 d1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 c2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 c9 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 54 d1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 c2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 cb 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 15 d1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 c2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 cb 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 d6 d0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 c2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 c9 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 97 d0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 c1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ca 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 58 d0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 c1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ca 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 19 d0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a c1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ca 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 da cf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b c1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ca 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 9b cf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc c0 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ca 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 5c cf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d c0 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ca 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 1d cf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e c0 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 c9 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 de ce b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f c0 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 c9 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 9f ce b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 bf b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 c9 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 4c 6a c7 f7 7f 00 00 e8 60 ce b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 bf b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ca 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 4c 6a c7 f7 7f 00 00 e8 24 ce b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 bf b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 c9 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 4c 6a c7 f7 7f 00 00 e8 e8 cd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 bf b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 ca 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 d1 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 c2 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737c958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c9 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d1 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c2 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737cb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cb 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d1 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c2 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737cb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cb 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 d0 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 c2 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737c978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c9 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 d0 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 c1 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737ca58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ca 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 d0 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 c1 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737ca38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ca 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 d0 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a c1 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737ca78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ca 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da cf b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b c1 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737ca18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ca 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b cf b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc c0 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737cad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ca 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c cf b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c0 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737ca98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ca 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d cf b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e c0 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737c9b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c9 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de ce b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c0 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737c9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 c9 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ce b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 bf b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737c9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c9 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 ce b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 bf b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737cab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ca 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ce b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 bf b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737c998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c9 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a4c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 cd b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 bf b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737caf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 ca 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f8 48 6a c7 f7 7f 00 00 e8 93 cc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 bd b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 54 cc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 bd b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 15 cc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 bd b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 d6 cb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 bd b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 97 cb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 bc b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 58 cb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 bc b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 19 cb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a bc b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 da ca b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b bc b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 9b ca b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc bb b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 5c ca b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d bb b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 1d ca b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e bb b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 de c9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f bb b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 9f c9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 ba b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 cf 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 48 6a c7 f7 7f 00 00 e8 60 c9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 ba b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 cf 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 48 6a c7 f7 7f 00 00 e8 24 c9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 ba b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 cf 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 48 6a c7 f7 7f 00 00 e8 e8 c8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 ba b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 cf 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 cc b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 bd b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 cc b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bd b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737d008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d0 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 cc b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 bd b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737cff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 cf 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 cb b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 bd b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737cf28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cf 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 cb b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 bc b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737cf98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 cf 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 cb b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 bc b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737cf88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 cf 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 cb b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a bc b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da ca b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b bc b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b ca b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc bb b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737cfd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 cf 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ca b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d bb b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737cfb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 cf 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d ca b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e bb b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737cf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 cf 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de c9 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f bb b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737cf68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cf 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c9 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 ba b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737cf58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cf 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 c9 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ba b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737cfc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 cf 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 c9 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 ba b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737cf38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cf 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a48f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 48 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 c8 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ba b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737cfe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 cf 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[998] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 98 45 6a c7 f7 7f 00 00 e8 93 c7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 b8 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 54 c7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 b8 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 15 c7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 b8 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 d6 c6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 b8 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 97 c6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 b7 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 58 c6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 b7 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 19 c6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a b7 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 da c5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b b7 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 9b c5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc b6 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 5c c5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d b6 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 1d c5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e b6 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 de c4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f b6 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 9f c4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 b5 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 d0 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 45 6a c7 f7 7f 00 00 e8 60 c4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 b5 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 d0 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 45 6a c7 f7 7f 00 00 e8 24 c4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 b5 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 d0 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 45 6a c7 f7 7f 00 00 e8 e8 c3}
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
002eh mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c7 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b8 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737d028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d0 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c7 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b8 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737d118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d1 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c7 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 b8 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737d108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d1 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 c6 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 b8 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737d038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d0 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 c6 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 b7 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737d0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d0 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 c6 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 b7 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737d098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d0 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 c6 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a b7 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737d0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d0 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c5 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b b7 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737d088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d0 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c5 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc b6 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737d0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d0 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c5 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b6 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737d0c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d0 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c5 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e b6 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737d058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d0 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de c4 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f b6 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737d078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d0 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c4 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 b5 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737d068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d0 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 c4 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 b5 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737d0d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d0 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 c4 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 b5 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737d048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d0 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a4598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 45 6a c7 f7 7f 00 00}
03e3h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e8 43 6a c7 f7 7f 00 00 e8 93 c2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 b3 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 54 c2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 b3 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 15 c2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 b3 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 d6 c1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 b3 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 97 c1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 b2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 58 c1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 b2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 19 c1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a b2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 da c0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b b2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 9b c0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc b1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 5c c0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d b1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 1d c0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e b1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 de bf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f b1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 9f bf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 b0 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 d1 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 43 6a c7 f7 7f 00 00 e8 60 bf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 b0 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 d1 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 43 6a c7 f7 7f 00 00 e8 24 bf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 b0 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 d1 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 43 6a c7 f7 7f 00 00 e8 e8 be b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 b0 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 08 d2 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c2 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b3 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737d138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d1 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c2 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b3 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737d228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d2 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c2 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 b3 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737d218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 c1 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 b3 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737d148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d1 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 c1 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 b2 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737d1b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d1 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 c1 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 b2 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737d1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d1 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 c1 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a b2 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737d1c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d1 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c0 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b b2 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737d198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d1 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c0 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc b1 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737d1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d1 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c0 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b1 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737d1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d1 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c0 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e b1 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737d168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d1 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de bf b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f b1 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737d188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d1 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f bf b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 b0 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737d178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 bf b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 b0 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737d1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d1 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 bf b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 b0 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737d158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d1 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a43e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 43 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 be b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 b0 b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737d208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 d2 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 57 6a c7 f7 7f 00 00 e8 93 bd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 ae b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 54 bd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 ae b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 de 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 15 bd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 ae b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 de 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 d6 bc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 ae b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 97 bc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 ad b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 58 bc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 ad b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 19 bc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a ad b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 da bb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b ad b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 9b bb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc ac b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 de 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 5c bb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d ac b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 1d bb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e ac b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 de ba b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f ac b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 9f ba b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 ab b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 d2 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 57 6a c7 f7 7f 00 00 e8 60 ba b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 ab b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 de 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 57 6a c7 f7 7f 00 00 e8 24 ba b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 ab b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 d2 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 57 6a c7 f7 7f 00 00 e8 e8 b9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 ab b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 98 de 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 bd b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 ae b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737d248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d2 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 bd b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 ae b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737deb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 de 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 bd b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 ae b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737dea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 de 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 bc b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ae b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737d258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d2 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 bc b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 ad b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737d2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d2 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 bc b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 ad b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737d2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d2 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 bc b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ad b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737d2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da bb b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b ad b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737d2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d2 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b bb b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ac b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737de88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 de 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c bb b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ac b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737d2e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d2 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d bb b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ac b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737d278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d2 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de ba b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ac b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737d298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d2 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ba b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 ab b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737d288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d2 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 ba b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ab b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737de78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 de 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ba b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 ab b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737d268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d2 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a5738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 57 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 b9 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ab b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737de98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 de 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 08 54 6a c7 f7 7f 00 00 e8 93 b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 a9 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 de 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 54 b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 a9 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 15 b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 a9 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 d6 b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 a9 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 de 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 97 b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 a8 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 58 b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 a8 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 19 b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a a8 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 da b6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b a8 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 9b b6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc a7 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 5c b6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d a7 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 1d b6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e a7 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 de b5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f a7 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 9f b5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 a6 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 54 6a c7 f7 7f 00 00 e8 60 b5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 a6 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 df 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 54 6a c7 f7 7f 00 00 e8 24 b5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 a6 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 de 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 54 6a c7 f7 7f 00 00 e8 e8 b4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 a6 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 df 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 b8 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 a9 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737ded8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 de 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 b8 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 a9 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737dfc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 df 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 b8 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 a9 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737dfb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 df 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 b7 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 a9 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737dee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 de 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b7 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 a8 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737df58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 df 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b7 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 a8 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737df48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 df 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 b7 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a a8 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737df68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 df 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da b6 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b a8 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737df38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 df 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b b6 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc a7 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737df98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 df 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c b6 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d a7 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737df78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 df 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d b6 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e a7 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737df08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 df 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de b5 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f a7 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737df28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b5 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 a6 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737df18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 b5 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 a6 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737df88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 df 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b5 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 a6 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737def8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 de 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 b4 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a6 b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737dfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 df 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 58 4f 6a c7 f7 7f 00 00 e8 93 b3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 a4 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 54 b3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 a4 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 15 b3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 a4 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 d6 b2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 a4 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 df 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 97 b2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 a3 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 58 b2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 a3 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 19 b2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a a3 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 da b1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b a3 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 9b b1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc a2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 5c b1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d a2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 1d b1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e a2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 de b0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f a2 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 9f b0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 a1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 4f 6a c7 f7 7f 00 00 e8 60 b0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 a1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 e0 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 4f 6a c7 f7 7f 00 00 e8 24 b0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 a1 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 e0 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 4f 6a c7 f7 7f 00 00 e8 e8 af b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 a1 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 e0 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 b3 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 a4 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737dfe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 df 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 b3 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 a4 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737e0d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e0 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 b3 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 a4 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737e0c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e0 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 b2 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 a4 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737dff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b2 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 a3 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737e068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e0 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b2 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 a3 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737e058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e0 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 b2 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a a3 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737e078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e0 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da b1 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b a3 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737e048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e0 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b b1 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc a2 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737e0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e0 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c b1 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d a2 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737e088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e0 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d b1 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e a2 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737e018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e0 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de b0 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f a2 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737e038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e0 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b0 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 a1 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737e028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 b0 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 a1 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737e098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e0 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b0 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 a1 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737e008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e0 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4f 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 af b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a1 b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737e0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 e0 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 68 5a 6a c7 f7 7f 00 00 e8 93 ae b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 9f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 e0 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 54 ae b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 9f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 15 ae b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 9f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 d6 ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 9f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 97 ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 9e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 58 ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 9e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 19 ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 9e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 da ac b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 9e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 9b ac b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 9d b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 5c ac b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 9d b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 1d ac b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 9d b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 de ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 9d b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 9f ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 9c b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 e1 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 5a 6a c7 f7 7f 00 00 e8 60 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 9c b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 e1 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 5a 6a c7 f7 7f 00 00 e8 24 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 9c b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 e1 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 5a 6a c7 f7 7f 00 00 e8 e8 aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 9c b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 e1 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 ae b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 9f b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737e0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e0 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 ae b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 9f b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737e1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e1 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 ae b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 9f b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737e1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e1 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 ad b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 9f b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737e108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e1 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 ad b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 9e b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737e178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e1 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ad b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 9e b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737e168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e1 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ad b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 9e b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737e188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e1 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da ac b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 9e b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737e158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e1 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b ac b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 9d b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737e1b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e1 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ac b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 9d b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737e198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e1 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d ac b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 9d b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737e128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e1 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de ab b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 9d b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737e148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e1 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ab b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 9c b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737e138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e1 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 ab b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 9c b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737e1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e1 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ab b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 9c b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737e118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e1 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 aa b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 9c b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737e1c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 e1 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 68 7a 6a c7 f7 7f 00 00 e8 93 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 9a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 54 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 9a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 15 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 9a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 d6 a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 9a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 97 a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 99 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 58 a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 99 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 19 a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 99 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 da a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 99 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 9b a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 98 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 5c a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 98 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 1d a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 98 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 de a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 98 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 9f a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 97 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 7a 6a c7 f7 7f 00 00 e8 60 a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 97 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ef 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 7a 6a c7 f7 7f 00 00 e8 24 a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 97 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ee 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 7a 6a c7 f7 7f 00 00 e8 e8 a5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 97 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 ef 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a9 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 9a b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737ee18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ee 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 a9 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 9a b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737eff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ef 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 a9 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 9a b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737efd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ef 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 a8 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 9a b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737ee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a8 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 99 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737ef18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ef 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 a8 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 99 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737eef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ee 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a8 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 99 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737ef38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ef 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da a7 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 99 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737eed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ee 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b a7 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 98 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737ef98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ef 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c a7 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 98 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737ef58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ef 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d a7 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 98 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737ee78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ee 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de a6 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 98 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737eeb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ee 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f a6 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 97 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737ee98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ee 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 a6 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 97 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737ef78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ef 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 a6 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 97 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737ee58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ee 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a7a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7a 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 a5 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 97 b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737efb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 ef 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 77 6a c7 f7 7f 00 00 e8 93 a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 95 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 54 a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 95 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 15 a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 95 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 d6 a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 95 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 97 a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 94 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 58 a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 94 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 19 a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 94 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 da a2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 94 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 9b a2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 93 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 5c a2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 93 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 1d a2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 93 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 de a1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 93 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 9f a1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 92 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f1 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 77 6a c7 f7 7f 00 00 e8 60 a1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 92 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f1 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 77 6a c7 f7 7f 00 00 e8 24 a1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 92 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f1 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 77 6a c7 f7 7f 00 00 e8 e8 a0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 92 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 f1 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a4 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 95 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737f0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f0 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 a4 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 95 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737f1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f1 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 a4 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 95 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737f1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f1 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 a3 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 95 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737f108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f1 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a3 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 94 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737f178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f1 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 a3 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 94 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737f168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f1 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a3 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 94 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737f188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f1 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da a2 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 94 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b a2 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 93 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737f1b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f1 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c a2 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 93 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737f198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f1 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d a2 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 93 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737f128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f1 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de a1 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 93 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737f148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f1 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f a1 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 92 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737f138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f1 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 a1 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 92 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737f1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f1 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 a1 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 92 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737f118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f1 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a7738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 a0 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 92 b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737f1c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 f1 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 db 68 c7 f7 7f 00 00 e8 93 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 90 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f7 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 54 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 90 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 15 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 90 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 d6 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 90 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f7 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 97 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 8f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 58 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 8f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 19 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 8f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 da 9d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 8f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 9b 9d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 8e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 5c 9d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 8e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 1d 9d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 8e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f7 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 de 9c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 8e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 9f 9c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 8d b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 db 68 c7 f7 7f 00 00 e8 60 9c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 8d b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f8 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 db 68 c7 f7 7f 00 00 e8 24 9c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 8d b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f7 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 db 68 c7 f7 7f 00 00 e8 e8 9b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 8d b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 98 f8 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 9f b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 90 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737f7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 9f b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 90 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737f8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f8 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 9f b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 90 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737f8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f8 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 9e b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 90 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737f7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f7 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 9e b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 8f b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737f848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f8 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 9e b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 8f b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737f838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f8 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 9e b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 8f b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737f858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f8 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 9d b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 8f b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737f828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f8 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 9d b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 8e b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737f888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f8 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 9d b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 8e b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737f868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f8 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 9d b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 8e b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737f7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f7 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 9c b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 8e b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737f818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f8 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 9c b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 8d b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737f808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f8 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 9c b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 8d b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737f878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f8 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 9c b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 8d b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737f7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f7 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c768db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 68 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 9b b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 8d b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737f898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 f8 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 47 6a c7 f7 7f 00 00 e8 93 9a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 8b b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 54 9a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 8b b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 15 9a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 8b b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 d6 99 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 8b b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 97 99 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 8a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 58 99 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 8a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 19 99 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 8a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 da 98 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 8a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 9b 98 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 89 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 5c 98 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 89 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 1d 98 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 89 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 de 97 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 89 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 9f 97 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 88 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 47 6a c7 f7 7f 00 00 e8 60 97 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 88 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f9 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 47 6a c7 f7 7f 00 00 e8 24 97 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 88 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f8 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 47 6a c7 f7 7f 00 00 e8 e8 96 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 88 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 f9 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 9a b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 8b b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737f8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f8 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 9a b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 8b b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737f9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f9 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 9a b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 8b b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737f9b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f9 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 99 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 8b b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737f8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 99 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 8a b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737f958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f9 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 99 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 8a b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 99 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 8a b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737f968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f9 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 98 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 8a b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737f938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f9 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 98 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 89 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737f998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f9 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 98 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 89 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737f978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f9 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 98 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 89 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737f908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f9 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 97 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 89 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737f928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f9 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 97 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 88 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737f918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f9 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 97 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 88 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737f988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f9 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 97 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 88 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737f8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f8 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 47 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 96 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 88 b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737f9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 f9 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a8 84 6a c7 f7 7f 00 00 e8 93 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 86 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 54 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 86 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 15 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 86 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 d6 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 86 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 97 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 85 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 58 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 85 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 19 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 85 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 da 93 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 85 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 9b 93 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 84 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 5c 93 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 84 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 1d 93 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 84 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 de 92 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 84 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 9f 92 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 83 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 84 6a c7 f7 7f 00 00 e8 60 92 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 83 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 fa 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 84 6a c7 f7 7f 00 00 e8 24 92 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 83 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 fa 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 84 6a c7 f7 7f 00 00 e8 e8 91 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 83 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 fa 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 95 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 86 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 95 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 86 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c737fad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 fa 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 95 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 86 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c737fac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fa 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 94 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 86 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737f9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f9 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 94 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 85 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737fa68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fa 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 94 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 85 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737fa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fa 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 94 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 85 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737fa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 fa 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 93 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 85 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737fa48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fa 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 93 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 84 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c737faa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fa 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 93 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 84 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737fa88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 fa 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 93 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 84 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737fa18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 fa 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 92 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 84 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737fa38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 fa 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 92 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 83 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737fa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fa 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 92 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 83 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737fa98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 fa 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 92 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 83 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737fa08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fa 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 91 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 83 b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c737fab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 fa 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 78 81 6a c7 f7 7f 00 00 e8 93 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 81 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 54 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 81 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 04 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 15 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 81 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 04 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 d6 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 81 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 97 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 80 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 58 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 80 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 19 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 80 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 da 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 80 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 9b 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 7f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 04 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 5c 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 7f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 1d 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 7f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 de 8d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 7f b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 9f 8d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 7e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 81 6a c7 f7 7f 00 00 e8 60 8d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 7e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 fb 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 81 6a c7 f7 7f 00 00 e8 24 8d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 7e b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 fb 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 81 6a c7 f7 7f 00 00 e8 e8 8c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 7e b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 68 04 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 90 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 81 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c737faf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fa 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 90 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 81 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7380488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 04 38 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 90 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 81 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7380478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 04 38 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 8f b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 81 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c737fb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fb 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 8f b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 80 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c737fb78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 fb 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 8f b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 80 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c737fb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fb 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 8f b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 80 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c737fb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 fb 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 8e b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 80 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c737fb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 8e b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 7f b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7380458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 04 38 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 8e b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 7f b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c737fb98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 fb 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 8e b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 7f b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c737fb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fb 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 8d b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 7f b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c737fb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fb 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 8d b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 7e b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c737fb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 fb 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 8d b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 7e b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c737fba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fb 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 8d b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 7e b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c737fb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 fb 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a8178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 8c b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 7e b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7380468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 04 38 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 08 8b 6a c7 f7 7f 00 00 e8 93 8b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 7c b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 04 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 54 8b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 7c b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 15 8b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 7c b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 d6 8a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 7c b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 04 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 97 8a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 7b b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 58 8a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 7b b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 19 8a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 7b b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 da 89 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 7b b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 9b 89 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 7a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 5c 89 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 7a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 1d 89 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 7a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 04 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 de 88 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 7a b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 04 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 9f 88 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 79 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 04 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 8b 6a c7 f7 7f 00 00 e8 60 88 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 79 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 05 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 8b 6a c7 f7 7f 00 00 e8 24 88 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 79 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 04 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 8b 6a c7 f7 7f 00 00 e8 e8 87 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 79 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 78 05 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 8b b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 7c b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73804a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 04 38 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 8b b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 7c b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7380598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 05 38 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 8b b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 7c b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7380588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 05 38 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 8a b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 7c b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73804b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 04 38 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 8a b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 7b b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7380528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 05 38 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 8a b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 7b b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7380518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 05 38 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 8a b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 7b b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7380538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 05 38 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 89 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 7b b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7380508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 38 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 89 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 7a b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7380568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 05 38 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 89 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 7a b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7380548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 05 38 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 89 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 7a b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73804d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 04 38 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 88 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 7a b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73804f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 04 38 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 88 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 79 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73804e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 04 38 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 88 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 79 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7380558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 05 38 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 88 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 79 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73804c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 04 38 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a8b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8b 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 87 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 79 b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7380578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 05 38 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_8u[1054] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d8 87 6a c7 f7 7f 00 00 e8 93 86 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 77 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 54 86 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 77 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 06 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 15 86 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 77 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 06 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 d6 85 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 77 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 97 85 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 76 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 06 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 58 85 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 76 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 06 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 19 85 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 76 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 06 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 da 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 76 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 06 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 9b 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 75 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 06 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 5c 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 75 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 06 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 1d 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 75 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 de 83 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 75 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 06 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 9f 83 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 74 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 05 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 87 6a c7 f7 7f 00 00 e8 60 83 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 74 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 06 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 87 6a c7 f7 7f 00 00 e8 24 83 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 74 b1 5e 48 b9 00 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 05 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 87 6a c7 f7 7f 00 00 e8 e8 82 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 74 b1 5e 48 b8 00 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 88 06 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 86 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 77 b1 5e}
004ch mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73805b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 05 38 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 86 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 77 b1 5e}
008bh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73806a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 06 38 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 86 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 77 b1 5e}
00cah mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7380698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 06 38 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 85 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 77 b1 5e}
0109h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73805c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 05 38 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 85 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 76 b1 5e}
0148h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7380638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 06 38 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 85 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 76 b1 5e}
0187h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7380628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 06 38 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 85 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 76 b1 5e}
01c6h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7380648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 06 38 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 84 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 76 b1 5e}
0205h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7380618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 06 38 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 84 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 75 b1 5e}
0244h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7380678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 06 38 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 84 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 75 b1 5e}
0283h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7380658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 06 38 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 84 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 75 b1 5e}
02c2h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73805e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 05 38 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 83 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 75 b1 5e}
0301h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7380608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 06 38 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 83 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 74 b1 5e}
0340h mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73805f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 05 38 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 83 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 74 b1 5e}
037fh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7380668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 06 38 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 83 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 74 b1 5e}
03bbh mov rcx,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 24 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73805d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 38 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c76a87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6a c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 82 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 74 b1 5e}
03f7h mov rax,7ff7c624e100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e1 24 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7380688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 06 38 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 4f 8c c7 f7 7f 00 00 e8 91 7d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 6e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ed 38 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 52 7d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 6e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ed 38 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 13 7d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 6e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ed 38 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 d4 7c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 6e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ed 38 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 95 7c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 6d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ed 38 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 56 7c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 6d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ec 38 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 17 7c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 6d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ec 38 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 d8 7b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 6d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ec 38 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 99 7b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 6c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ec 38 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 5a 7b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 6c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ec 38 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 1b 7b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 6c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ec 38 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 dc 7a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 6c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ec 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 9d 7a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 6b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ec 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 5e 7a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 6b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 eb 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 1f 7a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 6b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 eb 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 e0 79 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 6b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 eb 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 a1 79 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 6a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 eb 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 62 79 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 6a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 eb 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 23 79 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 6a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 eb 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 e4 78 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 6a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 eb 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 a5 78 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 69 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 eb 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 66 78 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 69 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ea 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 27 78 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 69 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ea 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 e8 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 69 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 9a 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 4f 8c c7 f7 7f 00 00 e8 a9 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 68 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 9a 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 4f 8c c7 f7 7f 00 00 e8 6d 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 68 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 9a 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 4f 8c c7 f7 7f 00 00 e8 31 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 68 b1 5e 48 b8 50 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 58 9a 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 7d b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 6e b1 5e}
004eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c738ed98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ed 38 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 7d b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 6e b1 5e}
008dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c738ed78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed 38 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 7d b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 6e b1 5e}
00cch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c738ed58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ed 38 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 7c b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 6e b1 5e}
010bh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c738ed38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ed 38 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 7c b1 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 6d b1 5e}
014ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c738ed18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ed 38 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 7c b1 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 6d b1 5e}
0189h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c738ecf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ec 38 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 7c b1 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 6d b1 5e}
01c8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c738ecd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ec 38 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 7b b1 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 6d b1 5e}
0207h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c738ecb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ec 38 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 7b b1 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 6c b1 5e}
0246h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c738ec98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ec 38 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 7b b1 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 6c b1 5e}
0285h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c738ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 38 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 7b b1 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 6c b1 5e}
02c4h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c738ec58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ec 38 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 7a b1 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 6c b1 5e}
0303h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c738ec38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ec 38 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 7a b1 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 6b b1 5e}
0342h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c738ec18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ec 38 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 7a b1 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 6b b1 5e}
0381h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c738ebf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 eb 38 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 7a b1 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 6b b1 5e}
03c0h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c738ebd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 eb 38 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 79 b1 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 6b b1 5e}
03ffh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c738ebb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 eb 38 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 79 b1 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 6a b1 5e}
043eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c738eb98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 eb 38 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 79 b1 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 6a b1 5e}
047dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c738eb78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 eb 38 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 79 b1 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 6a b1 5e}
04bch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c738eb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 eb 38 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 78 b1 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 6a b1 5e}
04fbh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c738eb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 eb 38 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 78 b1 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 69 b1 5e}
053ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c738eb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 eb 38 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 78 b1 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 69 b1 5e}
0579h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c738eaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ea 38 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 78 b1 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 69 b1 5e}
05b8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c738ead8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ea 38 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 77 b1 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 69 b1 5e}
05f7h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c7389ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 9a 38 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 77 b1 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 68 b1 5e}
0636h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c7389a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9a 38 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 77 b1 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 68 b1 5e}
0672h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c7389a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9a 38 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c4f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 77 b1 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 68 b1 5e}
06aeh mov rax,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e9 24 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c7389a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 9a 38 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 53 8c c7 f7 7f 00 00 e8 a1 71 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 62 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f7 38 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 62 71 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 62 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 f7 38 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 23 71 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 62 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f7 38 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 e4 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 62 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 f7 38 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 a5 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 61 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 f7 38 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 66 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 61 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 f6 38 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 27 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 61 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f6 38 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 e8 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 61 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 f6 38 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 a9 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 60 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f6 38 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 6a 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 60 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 2b 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 60 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 ec 6e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 60 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 ad 6e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 5f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 6e 6e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 5f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 2f 6e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 5f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 f0 6d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 5f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 b1 6d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 5e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 72 6d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 5e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 33 6d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 5e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 f4 6c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 5e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 b5 6c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 5d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 76 6c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 5d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ee 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 37 6c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 5d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ed 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 f8 6b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 5d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ed 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 53 8c c7 f7 7f 00 00 e8 b9 6b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 5c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ed 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 53 8c c7 f7 7f 00 00 e8 7d 6b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 5c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ed 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 53 8c c7 f7 7f 00 00 e8 41 6b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 5c b1 5e 48 b8 50 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 ed 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 71 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 62 b1 5e}
004eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c738f740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f7 38 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 71 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 62 b1 5e}
008dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c738f730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f7 38 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 71 b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 62 b1 5e}
00cch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c738f720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f7 38 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 70 b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 62 b1 5e}
010bh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c738f710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f7 38 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 70 b1 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 61 b1 5e}
014ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c738f700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f7 38 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 70 b1 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 61 b1 5e}
0189h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c738f6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f6 38 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 70 b1 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 61 b1 5e}
01c8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c738f6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f6 38 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 6f b1 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 61 b1 5e}
0207h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c738f6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f6 38 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 6f b1 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 60 b1 5e}
0246h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c738f6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f6 38 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 6f b1 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 60 b1 5e}
0285h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c738eec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ee 38 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 6f b1 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 60 b1 5e}
02c4h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c738eeb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ee 38 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 6e b1 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 60 b1 5e}
0303h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c738eea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ee 38 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 6e b1 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 5f b1 5e}
0342h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c738ee98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ee 38 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 6e b1 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 5f b1 5e}
0381h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c738ee88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ee 38 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 6e b1 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 5f b1 5e}
03c0h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c738ee78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ee 38 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 6d b1 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 5f b1 5e}
03ffh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c738ee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 38 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 6d b1 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 5e b1 5e}
043eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c738ee58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ee 38 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 6d b1 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 5e b1 5e}
047dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c738ee48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ee 38 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 6d b1 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 5e b1 5e}
04bch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c738ee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 38 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 6c b1 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 5e b1 5e}
04fbh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c738ee28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ee 38 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 6c b1 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 5d b1 5e}
053ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c738ee18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ee 38 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 6c b1 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 5d b1 5e}
0579h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c738ee08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ee 38 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 6c b1 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 5d b1 5e}
05b8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c738edf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ed 38 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 6b b1 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 5d b1 5e}
05f7h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c738ede8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ed 38 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 6b b1 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 5c b1 5e}
0636h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c738edd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ed 38 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 6b b1 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 5c b1 5e}
0672h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c738edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed 38 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c53a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 6b b1 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 5c b1 5e}
06aeh mov rax,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e9 24 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c738edb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 ed 38 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1146] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 56 8c c7 f7 7f 00 00 e8 c1 69 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 5a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 82 69 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 5a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 43 69 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 5a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 04 69 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 5a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 c5 68 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 59 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 86 68 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 59 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 47 68 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 59 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 08 68 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 59 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 c9 67 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 58 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 8a 67 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 58 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 4b 67 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 58 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 0c 67 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 58 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 cd 66 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 57 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 8e 66 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 57 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 4f 66 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 57 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 10 66 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 57 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 f8 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 d1 65 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 57 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 f7 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 56 8c c7 f7 7f 00 00 e8 92 65 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0030h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 69 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 5a b1 5e}
004eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c738f8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f8 38 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 69 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 5a b1 5e}
008dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c738f8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f8 38 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 69 b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 5a b1 5e}
00cch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c738f8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f8 38 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 69 b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 5a b1 5e}
010bh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c738f8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f8 38 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 68 b1 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 59 b1 5e}
014ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c738f8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f8 38 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 68 b1 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 59 b1 5e}
0189h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c738f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 38 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 68 b1 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 59 b1 5e}
01c8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c738f890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f8 38 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 68 b1 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 59 b1 5e}
0207h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c738f880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f8 38 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 67 b1 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 58 b1 5e}
0246h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c738f870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 38 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 67 b1 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 58 b1 5e}
0285h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c738f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 38 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 67 b1 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 58 b1 5e}
02c4h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c738f850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f8 38 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 67 b1 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 58 b1 5e}
0303h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c738f840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f8 38 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 66 b1 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 57 b1 5e}
0342h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c738f830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f8 38 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 66 b1 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 57 b1 5e}
0381h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c738f820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f8 38 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 66 b1 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 57 b1 5e}
03c0h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c738f810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f8 38 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 66 b1 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 57 b1 5e}
03ffh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c738f800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f8 38 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 65 b1 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 57 b1 5e}
043eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c738f7f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f7 38 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c5610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 56 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 65 b1 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<short>> lookup<short>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 58 8c c7 f7 7f 00 00 e8 e1 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 53 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 a2 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 52 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 63 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 52 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 24 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 52 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 e5 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 52 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 a6 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 51 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 67 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 51 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 28 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 51 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 e9 5f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 51 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 aa 5f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 50 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 6b 5f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 50 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 fa 38 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 2c 5f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 50 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 ed 5e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 50 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 ae 5e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 4f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 6f 5e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 4f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 30 5e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 4f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 f1 5d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 4f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 b2 5d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 4e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 73 5d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 4e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 34 5d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 4e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 f5 5c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 4e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 b6 5c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 4d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 77 5c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 4d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 38 5c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 4d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 f9 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 58 8c c7 f7 7f 00 00 e8 f9 5b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 4d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f9 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 58 8c c7 f7 7f 00 00 e8 bd 5b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 4c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 f9 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 58 8c c7 f7 7f 00 00 e8 81 5b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 4c b1 5e 48 b8 50 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 00 f9 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 61 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 53 b1 5e}
004eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c738faa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 fa 38 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 61 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 52 b1 5e}
008dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c738fa90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fa 38 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 61 b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 52 b1 5e}
00cch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c738fa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 38 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 61 b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 52 b1 5e}
010bh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c738fa70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 fa 38 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 60 b1 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 52 b1 5e}
014ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c738fa60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 fa 38 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 60 b1 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 51 b1 5e}
0189h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c738fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa 38 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 60 b1 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 51 b1 5e}
01c8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c738fa40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 fa 38 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 60 b1 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 51 b1 5e}
0207h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c738fa30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 fa 38 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 5f b1 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 51 b1 5e}
0246h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c738fa20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fa 38 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 5f b1 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 50 b1 5e}
0285h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c738fa10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fa 38 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 5f b1 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 50 b1 5e}
02c4h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c738fa00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fa 38 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 5f b1 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 50 b1 5e}
0303h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c738f9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f9 38 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 5e b1 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 50 b1 5e}
0342h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c738f9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f9 38 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 5e b1 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 4f b1 5e}
0381h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c738f9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f9 38 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 5e b1 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 4f b1 5e}
03c0h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c738f9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f9 38 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 5e b1 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 4f b1 5e}
03ffh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c738f9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f9 38 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 5d b1 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 4f b1 5e}
043eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c738f9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f9 38 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 5d b1 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 4e b1 5e}
047dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c738f990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f9 38 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 5d b1 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 4e b1 5e}
04bch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c738f980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f9 38 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 5d b1 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 4e b1 5e}
04fbh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c738f970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f9 38 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 5c b1 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 4e b1 5e}
053ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c738f960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f9 38 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 5c b1 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 4d b1 5e}
0579h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c738f950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f9 38 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 5c b1 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 4d b1 5e}
05b8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c738f940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f9 38 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 5c b1 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 4d b1 5e}
05f7h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c738f930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f9 38 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5b b1 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 4d b1 5e}
0636h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c738f920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f9 38 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 5b b1 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 4c b1 5e}
0672h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c738f910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f9 38 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c5880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 5b b1 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 4c b1 5e}
06aeh mov rax,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e9 24 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c738f900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 f9 38 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 f1 55 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 47 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 b2 55 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 46 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 73 55 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 46 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 34 55 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 46 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 f5 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 46 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 b6 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 45 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 77 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 45 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 38 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 45 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 f9 53 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 45 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 ba 53 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 44 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 7b 53 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 44 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 3c 53 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 44 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 fd 52 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 44 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 be 52 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 43 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 7f 52 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 43 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 40 52 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 43 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 01 52 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 43 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 13 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 c2 51 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 42 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 12 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 83 51 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 42 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 12 39 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 44 51 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 42 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 12 39 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 05 51 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 42 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 12 39 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 c6 50 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 41 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 12 39 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 87 50 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 41 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 12 39 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 48 50 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 41 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 12 39 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 09 50 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 41 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 12 39 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 cd 4f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 40 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 12 39 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 5a 8c c7 f7 7f 00 00 e8 91 4f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 40 b1 5e 48 b8 50 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 fa 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 55 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 47 b1 5e}
004eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7391400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 14 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 55 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 46 b1 5e}
008dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73913f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 13 39 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 55 b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 46 b1 5e}
00cch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73913e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 39 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 55 b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 46 b1 5e}
010bh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73913d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 13 39 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 54 b1 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 46 b1 5e}
014ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73913c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 13 39 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 54 b1 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 45 b1 5e}
0189h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73913b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 13 39 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 54 b1 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 45 b1 5e}
01c8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73913a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 13 39 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 54 b1 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 45 b1 5e}
0207h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c7391390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 13 39 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 53 b1 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 45 b1 5e}
0246h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c7391380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 13 39 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 53 b1 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 44 b1 5e}
0285h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c7391370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 13 39 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 53 b1 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 44 b1 5e}
02c4h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c7391360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 13 39 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 53 b1 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 44 b1 5e}
0303h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c7391350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 13 39 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 52 b1 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 44 b1 5e}
0342h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c7391340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 13 39 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 52 b1 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 43 b1 5e}
0381h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c7391330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 13 39 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 52 b1 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 43 b1 5e}
03c0h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c7391320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 13 39 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 52 b1 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 43 b1 5e}
03ffh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c7391310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 13 39 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 52 b1 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 43 b1 5e}
043eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c7391300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 13 39 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 51 b1 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 42 b1 5e}
047dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73912f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 12 39 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 51 b1 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 42 b1 5e}
04bch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c73912e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 12 39 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 51 b1 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 42 b1 5e}
04fbh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c73912d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 12 39 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 51 b1 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 42 b1 5e}
053ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c73912c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 12 39 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 50 b1 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 41 b1 5e}
0579h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c73912b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 12 39 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 50 b1 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 41 b1 5e}
05b8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c73912a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 12 39 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 50 b1 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 41 b1 5e}
05f7h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c7391290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 12 39 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 50 b1 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 41 b1 5e}
0636h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c7391280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 12 39 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 4f b1 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 40 b1 5e}
0672h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c7391270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 12 39 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 4f b1 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 40 b1 5e}
06aeh mov rax,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e9 24 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c738fab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 fa 38 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 5d 8c c7 f7 7f 00 00 e8 11 4e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 3f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 d2 4d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 3f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 93 4d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 3e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 54 4d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 3e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 15 4d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 3e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 d6 4c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 3e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 97 4c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 3d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 58 4c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 3d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 19 4c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 3d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 da 4b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 3d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 9b 4b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 3c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 5c 4b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 3c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 1d 4b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 3c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 de 4a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 3c b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 9f 4a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 3b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 60 4a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 3b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 21 4a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 3b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 e2 49 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 3b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 a3 49 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 3a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 64 49 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 3a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 25 49 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 3a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 e6 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 3a b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 a7 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 39 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 68 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 39 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 14 39 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 5d 8c c7 f7 7f 00 00 e8 29 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 39 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 14 39 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 5d 8c c7 f7 7f 00 00 e8 ed 47 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 39 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 14 39 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 5d 8c c7 f7 7f 00 00 e8 b1 47 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 38 b1 5e 48 b8 50 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 10 14 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 4e b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 3f b1 5e}
004eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73915b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 15 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 4d b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 3f b1 5e}
008dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73915a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 15 39 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 4d b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 3e b1 5e}
00cch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7391590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 15 39 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 4d b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 3e b1 5e}
010bh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7391580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 15 39 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 4d b1 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 3e b1 5e}
014ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c7391570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 15 39 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 4c b1 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 3e b1 5e}
0189h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c7391560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 15 39 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 4c b1 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 3d b1 5e}
01c8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c7391550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 15 39 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 4c b1 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 3d b1 5e}
0207h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c7391540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 15 39 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 4c b1 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 3d b1 5e}
0246h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c7391530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 15 39 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 4b b1 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 3d b1 5e}
0285h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c7391520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 15 39 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 4b b1 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 3c b1 5e}
02c4h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c7391510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 15 39 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 4b b1 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 3c b1 5e}
0303h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c7391500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 15 39 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 4b b1 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 3c b1 5e}
0342h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c73914f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 14 39 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 4a b1 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 3c b1 5e}
0381h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c73914e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 14 39 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 4a b1 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 3b b1 5e}
03c0h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c73914d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 14 39 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 4a b1 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 3b b1 5e}
03ffh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c73914c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 39 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 4a b1 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 3b b1 5e}
043eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c73914b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 14 39 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 49 b1 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 3b b1 5e}
047dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c73914a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 14 39 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 49 b1 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 3a b1 5e}
04bch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c7391490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 14 39 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 49 b1 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 3a b1 5e}
04fbh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c7391480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 14 39 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 49 b1 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 3a b1 5e}
053ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c7391470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 14 39 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 48 b1 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 3a b1 5e}
0579h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c7391460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 14 39 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 48 b1 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 39 b1 5e}
05b8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c7391450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 14 39 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 48 b1 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 39 b1 5e}
05f7h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c7391440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 14 39 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 48 b1 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 39 b1 5e}
0636h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c7391430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 14 39 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 47 b1 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 39 b1 5e}
0672h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c7391420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 14 39 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 47 b1 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 38 b1 5e}
06aeh mov rax,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e9 24 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c7391410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 14 39 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ulong>> lookup<ulong>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[1749] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 21 42 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 33 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 27 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 e2 41 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 33 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 27 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 a3 41 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 32 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 27 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 64 41 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 32 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 27 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 25 41 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 32 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 e6 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 32 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 a7 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 31 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 68 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 31 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 29 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 31 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 ea 3f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 31 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 ab 3f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 30 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 6c 3f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 30 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 2d 3f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 30 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 ee 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 30 b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 af 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 2f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 70 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 2f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 26 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 31 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 2f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 16 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 f2 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 2f b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 16 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 b3 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 2e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 16 39 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 74 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 2e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 16 39 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 35 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 2e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 16 39 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 f6 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 2e b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 16 39 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 b7 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 2d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 16 39 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 78 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 2d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 15 39 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 39 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 2d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 15 39 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 fd 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 2d b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 15 39 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 5f 8c c7 f7 7f 00 00 e8 c1 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 2c b1 5e 48 b8 50 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 15 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 42 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 33 b1 5e}
004eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7392730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 27 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 41 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 33 b1 5e}
008dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7392720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 27 39 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 41 b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 32 b1 5e}
00cch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7392710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 27 39 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00edh mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 41 b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 32 b1 5e}
010bh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7392700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 27 39 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012ch mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
0136h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 41 b1 5e}
013bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0142h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0145h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 32 b1 5e}
014ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0154h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0158h mov rcx,7ff7c73926f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 26 39 c7 f7 7f 00 00}
0162h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0166h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016bh mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
0175h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 40 b1 5e}
017ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0181h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0184h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 32 b1 5e}
0189h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0193h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0197h mov rcx,7ff7c73926e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 26 39 c7 f7 7f 00 00}
01a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a5h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01aah mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
01b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 40 b1 5e}
01b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 31 b1 5e}
01c8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
01d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d6h mov rcx,7ff7c73926d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 39 c7 f7 7f 00 00}
01e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01e9h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 40 b1 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0202h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 31 b1 5e}
0207h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0211h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0215h mov rcx,7ff7c73926c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 26 39 c7 f7 7f 00 00}
021fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0223h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0228h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
0232h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 40 b1 5e}
0237h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0241h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 31 b1 5e}
0246h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0250h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0254h mov rcx,7ff7c73926b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 26 39 c7 f7 7f 00 00}
025eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0262h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0267h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
0271h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 3f b1 5e}
0276h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0279h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0280h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 31 b1 5e}
0285h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
028fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0293h mov rcx,7ff7c73926a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 26 39 c7 f7 7f 00 00}
029dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a1h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a6h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
02b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 3f b1 5e}
02b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 30 b1 5e}
02c4h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
02ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d2h mov rcx,7ff7c7392690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 26 39 c7 f7 7f 00 00}
02dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e0h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e5h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
02efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 3f b1 5e}
02f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 30 b1 5e}
0303h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
030dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0311h mov rcx,7ff7c7392680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 26 39 c7 f7 7f 00 00}
031bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031fh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0324h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
032eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 3f b1 5e}
0333h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0336h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 30 b1 5e}
0342h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
034ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0350h mov rcx,7ff7c7392670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 26 39 c7 f7 7f 00 00}
035ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035eh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0363h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
036dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 3e b1 5e}
0372h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0375h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0379h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 30 b1 5e}
0381h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
038bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038fh mov rcx,7ff7c7392660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 26 39 c7 f7 7f 00 00}
0399h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039dh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a2h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
03ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 3e b1 5e}
03b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 2f b1 5e}
03c0h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
03cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03ceh mov rcx,7ff7c7392650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 26 39 c7 f7 7f 00 00}
03d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03dch jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e1h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
03ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 3e b1 5e}
03f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 2f b1 5e}
03ffh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0409h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040dh mov rcx,7ff7c7392640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 26 39 c7 f7 7f 00 00}
0417h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041bh jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0420h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 3e b1 5e}
042fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0432h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0436h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0439h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 2f b1 5e}
043eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0448h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044ch mov rcx,7ff7c7391660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 16 39 c7 f7 7f 00 00}
0456h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
045fh mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
0469h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 3d b1 5e}
046eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0471h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0475h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0478h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 2f b1 5e}
047dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0487h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048bh mov rcx,7ff7c7391650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 16 39 c7 f7 7f 00 00}
0495h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0499h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049eh mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
04a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 3d b1 5e}
04adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 2e b1 5e}
04bch mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
04c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cah mov rcx,7ff7c7391640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 16 39 c7 f7 7f 00 00}
04d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d8h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04ddh mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
04e7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 3d b1 5e}
04ech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04efh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 2e b1 5e}
04fbh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0505h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0509h mov rcx,7ff7c7391630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 16 39 c7 f7 7f 00 00}
0513h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0517h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051ch mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
0526h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 3d b1 5e}
052bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0532h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0535h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 2e b1 5e}
053ah mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0544h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0548h mov rcx,7ff7c7391620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 16 39 c7 f7 7f 00 00}
0552h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0556h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055bh mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 3c b1 5e}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 2e b1 5e}
0579h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c7391610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 16 39 c7 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059ah mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
05a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 3c b1 5e}
05a9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ach lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 2d b1 5e}
05b8h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
05c2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c6h mov rcx,7ff7c7391600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 16 39 c7 f7 7f 00 00}
05d0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d4h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05d9h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
05e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 3c b1 5e}
05e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 2d b1 5e}
05f7h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0601h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0605h mov rcx,7ff7c73915f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 15 39 c7 f7 7f 00 00}
060fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0613h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0618h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
0622h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 3c b1 5e}
0627h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0631h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 2d b1 5e}
0636h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0640h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0644h mov rcx,7ff7c73915e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 15 39 c7 f7 7f 00 00}
064eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0652h jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0654h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
065eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 3b b1 5e}
0663h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0666h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 2d b1 5e}
0672h mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
067ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0680h mov rcx,7ff7c73915d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 15 39 c7 f7 7f 00 00}
068ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068eh jmp short 06cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0690h mov rcx,7ff7c78c5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 8c c7 f7 7f 00 00}
069ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 3b b1 5e}
069fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 2c b1 5e}
06aeh mov rax,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e9 24 c6 f7 7f 00 00}
06b8h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bch mov rax,7ff7c73915c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 15 39 c7 f7 7f 00 00}
06c6h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
06d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<long>> lookup<long>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_8u[186] = {57 56 53 48 83 ec 20 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 bd 06 00 00 8b c9 48 8d 05 37 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 62 8c c7 f7 7f 00 00 e8 41 3a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 2b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 28 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 40 62 8c c7 f7 7f 00 00 e8 02 3a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 2b b1 5e 48 b9 50 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 28 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 40 62 8c c7 f7 7f 00 00 e8 c3}
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
0030h mov rcx,7ff7c78c6240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 62 8c c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3a b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 2b b1 5e}
004eh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73928e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 28 39 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
006fh mov rcx,7ff7c78c6240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 62 8c c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 3a b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 2b b1 5e}
008dh mov rcx,7ff7c624e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73928d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 28 39 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 06cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00aeh mov rcx,7ff7c78c6240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 62 8c c7 f7 7f 00 00}
00b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
