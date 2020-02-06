------------------------------------------------------------------------------------------------------------------------
; Shifter<byte> lookup<byte>(ShiftOpKind:byte kind)
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 80 b4 8b c7 f7 7f 00 00 e8 aa 33 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 24 b5 5e 48 b8 e0 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 40 26 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0037h mov rcx,7ff7c78bb480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b4 8b c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 33 b5 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 24 b5 5e}
0055h mov rax,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e3 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7352640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 26 35 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<sbyte> lookup<sbyte>(ShiftOpKind:byte kind)
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 70 b8 8b c7 f7 7f 00 00 e8 9a 31 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cb 22 b5 5e 48 b8 20 e4 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 29 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0037h mov rcx,7ff7c78bb870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b8 8b c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 31 b5 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 22 b5 5e}
0055h mov rax,7ff7c625e420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e4 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7352928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 29 35 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<ushort> lookup<ushort>(ShiftOpKind:byte kind)
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 60 bc 8b c7 f7 7f 00 00 e8 8a 2f b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 20 b5 5e 48 b8 60 e4 25 c6 f7 7f 00 00 48 89 46 18 48 b8 30 27 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0037h mov rcx,7ff7c78bbc60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bc 8b c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 2f b5 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 20 b5 5e}
0055h mov rax,7ff7c625e460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e4 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7352730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 27 35 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<short> lookup<short>(ShiftOpKind:byte kind)
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 70 be 8b c7 f7 7f 00 00 e8 7a 29 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 1a b5 5e 48 b8 a0 e4 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 29 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0037h mov rcx,7ff7c78bbe70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 be 8b c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 29 b5 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 1a b5 5e}
0055h mov rax,7ff7c625e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e4 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c73529e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 29 35 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<uint> lookup<uint>(ShiftOpKind:byte kind)
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 60 c2 8b c7 f7 7f 00 00 e8 6a 27 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 18 b5 5e 48 b8 e0 e4 25 c6 f7 7f 00 00 48 89 46 18 48 b8 90 27 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0037h mov rcx,7ff7c78bc260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c2 8b c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 27 b5 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 18 b5 5e}
0055h mov rax,7ff7c625e4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e4 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7352790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 27 35 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<int> lookup<int>(ShiftOpKind:byte kind)
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 70 c4 8b c7 f7 7f 00 00 e8 5a 25 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 16 b5 5e 48 b8 20 e5 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 3f 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0037h mov rcx,7ff7c78bc470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c4 8b c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 25 b5 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 16 b5 5e}
0055h mov rax,7ff7c625e520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e5 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7353f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 3f 35 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<ulong> lookup<ulong>(ShiftOpKind:byte kind)
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 60 c8 8b c7 f7 7f 00 00 e8 4a 23 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 14 b5 5e 48 b8 60 e5 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 27 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0037h mov rcx,7ff7c78bc860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c8 8b c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 23 b5 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 14 b5 5e}
0055h mov rax,7ff7c625e560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e5 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c73527f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 27 35 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<long> lookup<long>(ShiftOpKind:byte kind)
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 70 ca 8b c7 f7 7f 00 00 e8 3a 21 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 12 b5 5e 48 b8 a0 e5 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 40 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0037h mov rcx,7ff7c78bca70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ca 8b c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 21 b5 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 12 b5 5e}
0055h mov rax,7ff7c625e5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e5 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7354058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 40 35 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 d0 8b c7 f7 7f 00 00 e8 30 1f b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 10 b5 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 8f 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 f1 1e b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 10 b5 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 8f 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 b2 1e b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 0f b5 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 8f 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 73 1e b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 0f b5 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 8f 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 d0 8b c7 f7 7f 00 00 e8 37 1e b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 0f b5 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 8f 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 d0 8b c7 f7 7f 00 00 e8 fb 1d b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 0f b5 5e 48 b8 e0 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 8f 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 1f b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 10 b5 5e}
004fh mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7348ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 8f 34 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1e b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 10 b5 5e}
008eh mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7348f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8f 34 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 1e b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 0f b5 5e}
00cdh mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7348fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 8f 34 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 1e b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 0f b5 5e}
010ch mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7348fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8f 34 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 1e b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 0f b5 5e}
0148h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7348f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 8f 34 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 1d b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 0f b5 5e}
0184h mov rax,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e3 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7348f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 8f 34 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 c0 1c b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 0d b5 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 91 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 81 1c b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 0d b5 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 91 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 42 1c b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 0d b5 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 91 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 03 1c b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 0d b5 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 91 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 c7 1b b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 0c b5 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 91 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 8b 1b b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 0c b5 5e 48 b8 e0 e5 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 91 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 1c b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 0d b5 5e}
004fh mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7349188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 91 34 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 1c b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 0d b5 5e}
008eh mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7349138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 91 34 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 1c b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 0d b5 5e}
00cdh mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7349178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 91 34 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 1c b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 0d b5 5e}
010ch mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7349168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 91 34 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 1b b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 0c b5 5e}
0148h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7349158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 91 34 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 1b b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 0c b5 5e}
0184h mov rax,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e5 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7349148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 91 34 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ushort> lookup<ushort>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 50 1a b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 0b b5 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 9a 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 11 1a b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 0b b5 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 91 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 d2 19 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 0b b5 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 9a 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 93 19 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 0a b5 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 9a 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 57 19 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 0a b5 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 9a 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 1b 19 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 0a b5 5e 48 b8 20 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 91 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 1a b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 0b b5 5e}
004fh mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7349ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 9a 34 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 1a b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 0b b5 5e}
008eh mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c73491d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 91 34 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 19 b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 0b b5 5e}
00cdh mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7349ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 9a 34 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 19 b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 0a b5 5e}
010ch mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7349ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9a 34 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 19 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 0a b5 5e}
0148h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7349aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9a 34 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 19 b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 0a b5 5e}
0184h mov rax,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e6 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c73491e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 91 34 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 e0 17 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 09 b5 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 9b 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 a1 17 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 08 b5 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 9b 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 62 17 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 08 b5 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 9b 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 23 17 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 08 b5 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 9b 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 e7 16 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 08 b5 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 9b 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 ab 16 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 07 b5 5e 48 b8 60 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 30 9b 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 17 b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 09 b5 5e}
004fh mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7349b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9b 34 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 17 b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 08 b5 5e}
008eh mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7349b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 9b 34 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 17 b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 08 b5 5e}
00cdh mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7349b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 9b 34 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 17 b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 08 b5 5e}
010ch mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7349b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 9b 34 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 16 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 08 b5 5e}
0148h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7349b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 9b 34 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 16 b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 07 b5 5e}
0184h mov rax,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e6 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7349b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 9b 34 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 da 8b c7 f7 7f 00 00 e8 70 15 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 06 b5 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 9c 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 31 15 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 06 b5 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 9b 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 f2 14 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 06 b5 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 9c 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 b3 14 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 05 b5 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 9b 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 da 8b c7 f7 7f 00 00 e8 77 14 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 05 b5 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 9b 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 da 8b c7 f7 7f 00 00 e8 3b 14 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 05 b5 5e 48 b8 a0 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 9b 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 15 b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 06 b5 5e}
004fh mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7349c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 9c 34 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 15 b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 06 b5 5e}
008eh mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7349bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 9b 34 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 14 b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 06 b5 5e}
00cdh mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7349c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 9c 34 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 14 b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 05 b5 5e}
010ch mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7349bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 9b 34 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 14 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 05 b5 5e}
0148h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7349be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 9b 34 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 14 b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 05 b5 5e}
0184h mov rax,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e6 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7349bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 9b 34 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 dd 8b c7 f7 7f 00 00 e8 00 13 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 04 b5 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 9c 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 dd 8b c7 f7 7f 00 00 e8 c1 12 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 03 b5 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 9c 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 dd 8b c7 f7 7f 00 00 e8 82 12 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 03 b5 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 9c 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 dd 8b c7 f7 7f 00 00 e8 43 12 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 03 b5 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 9c 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 dd 8b c7 f7 7f 00 00 e8 07 12 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 03 b5 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 9c 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 dd 8b c7 f7 7f 00 00 e8 cb 11 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 02 b5 5e 48 b8 e0 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 70 9c 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78bdd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 dd 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 13 b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 04 b5 5e}
004fh mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7349cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9c 34 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78bdd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 dd 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 12 b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 03 b5 5e}
008eh mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7349c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 9c 34 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78bdd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 dd 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 12 b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 03 b5 5e}
00cdh mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7349ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9c 34 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78bdd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 dd 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 12 b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 03 b5 5e}
010ch mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7349c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9c 34 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78bdd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 dd 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 12 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 03 b5 5e}
0148h mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7349c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 34 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78bdd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 dd 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 11 b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 02 b5 5e}
0184h mov rax,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e6 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7349c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 9c 34 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 df 8b c7 f7 7f 00 00 e8 90 10 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 01 b5 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 9d 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 51 10 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 01 b5 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 9d 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 12 10 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 01 b5 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 9d 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 d3 0f b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 01 b5 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 9d 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 df 8b c7 f7 7f 00 00 e8 97 0f b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 00 b5 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 9d 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 df 8b c7 f7 7f 00 00 e8 5b 0f b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8c 00 b5 5e 48 b8 20 e7 25 c6 f7 7f 00 00 48 89 46 18 48 b8 10 9d 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 10 b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 01 b5 5e}
004fh mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7349d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 9d 34 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 10 b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 01 b5 5e}
008eh mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7349d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 9d 34 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 10 b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 01 b5 5e}
00cdh mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7349d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 9d 34 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 0f b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 01 b5 5e}
010ch mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7349d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 9d 34 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 0f b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 00 b5 5e}
0148h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7349d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 9d 34 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 0f b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 00 b5 5e}
0184h mov rax,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e7 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7349d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 9d 34 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 e1 8b c7 f7 7f 00 00 e8 20 0a b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 fb b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 9d 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 e1 09 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 fb b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 9d 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 a2 09 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 fa b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 9d 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 63 09 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 fa b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 9d 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 e1 8b c7 f7 7f 00 00 e8 27 09 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 fa b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 9d 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 e1 8b c7 f7 7f 00 00 e8 eb 08 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c fa b4 5e 48 b8 60 e7 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 9d 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 0a b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 fb b4 5e}
004fh mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7349df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 9d 34 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 09 b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fb b4 5e}
008eh mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7349da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9d 34 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 09 b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 fa b4 5e}
00cdh mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7349de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 9d 34 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 09 b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 fa b4 5e}
010ch mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7349dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 9d 34 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 09 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 fa b4 5e}
0148h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7349dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 9d 34 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 08 b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c fa b4 5e}
0184h mov rax,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e7 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7349db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 9d 34 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<float> lookup<float>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 e3 8b c7 f7 7f 00 00 e8 b0 07 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 f8 b4 5e 48 b9 a0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 5e 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 e3 8b c7 f7 7f 00 00 e8 71 07 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 f8 b4 5e 48 b9 a0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 5e 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 e3 8b c7 f7 7f 00 00 e8 32 07 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 f8 b4 5e 48 b9 a0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 5e 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 e3 8b c7 f7 7f 00 00 e8 f3 06 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 f8 b4 5e 48 b9 a0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 5e 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 e3 8b c7 f7 7f 00 00 e8 b7 06 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 f7 b4 5e 48 b9 a0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 5e 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 e3 8b c7 f7 7f 00 00 e8 7b 06 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac f7 b4 5e 48 b8 a0 e7 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 5e 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78be330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 07 b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f8 b4 5e}
004fh mov rcx,7ff7c625e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7355ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5e 35 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78be330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 07 b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f8 b4 5e}
008eh mov rcx,7ff7c625e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7355ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5e 35 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78be330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 07 b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f8 b4 5e}
00cdh mov rcx,7ff7c625e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7355ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5e 35 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78be330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 06 b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f8 b4 5e}
010ch mov rcx,7ff7c625e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7355ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5e 35 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78be330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 06 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f7 b4 5e}
0148h mov rcx,7ff7c625e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7355ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5e 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78be330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 06 b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac f7 b4 5e}
0184h mov rax,7ff7c625e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e7 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7355eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 5e 35 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<double> lookup<double>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 e7 8b c7 f7 7f 00 00 e8 40 05 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 f6 b4 5e 48 b9 e0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 5f 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 e7 8b c7 f7 7f 00 00 e8 01 05 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 f6 b4 5e 48 b9 e0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 5f 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 e7 8b c7 f7 7f 00 00 e8 c2 04 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 f5 b4 5e 48 b9 e0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 5f 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 e7 8b c7 f7 7f 00 00 e8 83 04 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 f5 b4 5e 48 b9 e0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 5f 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 e7 8b c7 f7 7f 00 00 e8 47 04 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 f5 b4 5e 48 b9 e0 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 5f 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 e7 8b c7 f7 7f 00 00 e8 0b 04 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c f5 b4 5e 48 b8 e0 e7 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 5f 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78be7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 8b c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 05 b5 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f6 b4 5e}
004fh mov rcx,7ff7c625e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7355fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 5f 35 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c78be7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 8b c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 05 b5 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f6 b4 5e}
008eh mov rcx,7ff7c625e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7355f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 5f 35 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c78be7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 8b c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 04 b5 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f5 b4 5e}
00cdh mov rcx,7ff7c625e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7355f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 5f 35 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c78be7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 8b c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 04 b5 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f5 b4 5e}
010ch mov rcx,7ff7c625e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7355f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5f 35 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c78be7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 8b c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 04 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f5 b4 5e}
0148h mov rcx,7ff7c625e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7355f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 5f 35 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c78be7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 8b c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 04 b5 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c f5 b4 5e}
0184h mov rax,7ff7c625e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e7 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7355f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 5f 35 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<byte> lookup<byte>(UnaryBitLogicKind:byte kind)
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 ee 8b c7 f7 7f 00 00 e8 e7 02 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 f4 b4 5e 48 b8 20 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 86 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c78bee40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ee 8b c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 02 b5 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f4 b4 5e}
0038h mov rax,7ff7c625e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e8 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7348660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 86 34 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<sbyte> lookup<sbyte>(UnaryBitLogicKind:byte kind)
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 70 f1 8b c7 f7 7f 00 00 e8 97 01 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 f2 b4 5e 48 b8 50 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 86 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c78bf170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f1 8b c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 01 b5 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f2 b4 5e}
0038h mov rax,7ff7c625e850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e8 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c73486d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 86 34 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ushort> lookup<ushort>(UnaryBitLogicKind:byte kind)
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 80 f3 8b c7 f7 7f 00 00 e8 47 00 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 f1 b4 5e 48 b8 80 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 8d 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c78bf380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f3 8b c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 00 b5 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f1 b4 5e}
0038h mov rax,7ff7c625e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7348df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 8d 34 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<short> lookup<short>(UnaryBitLogicKind:byte kind)
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 90 f5 8b c7 f7 7f 00 00 e8 f7 fe b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 f0 b4 5e 48 b8 b0 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 8e 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c78bf590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f5 8b c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fe b4 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f0 b4 5e}
0038h mov rax,7ff7c625e8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 e8 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7348e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 8e 34 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<uint> lookup<uint>(UnaryBitLogicKind:byte kind)
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a0 f7 8b c7 f7 7f 00 00 e8 a7 fd b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 ee b4 5e 48 b8 e0 d9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 8e 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c78bf7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f7 8b c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 fd b4 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 ee b4 5e}
0038h mov rax,7ff7c625d9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 d9 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7348e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 8e 34 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<int> lookup<int>(UnaryBitLogicKind:byte kind)
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 b0 f9 8b c7 f7 7f 00 00 e8 57 fc b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 ed b4 5e 48 b8 80 d9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 8e 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c78bf9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f9 8b c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 fc b4 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 ed b4 5e}
0038h mov rax,7ff7c625d980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 d9 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7348e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 8e 34 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ulong> lookup<ulong>(UnaryBitLogicKind:byte kind)
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c0 fb 8b c7 f7 7f 00 00 e8 07 fb b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 ec b4 5e 48 b8 e0 e8 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 8e 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c78bfbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 fb 8b c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 fb b4 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ec b4 5e}
0038h mov rax,7ff7c625e8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e8 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7348ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 8e 34 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<long> lookup<long>(UnaryBitLogicKind:byte kind)
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d0 fd 8b c7 f7 7f 00 00 e8 b7 f9 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 ea b4 5e 48 b8 10 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 8f 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c78bfdd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fd 8b c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 f9 b4 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 ea b4 5e}
0038h mov rax,7ff7c625e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 8f 34 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 d0 8b c7 f7 7f 00 00 e8 52 f4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 e5 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 6e 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 13 f4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 e5 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 70 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 d4 f3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 e5 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 70 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 95 f3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 e4 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 6e 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 56 f3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 e4 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 6f 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 17 f3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 e4 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 6f 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 d8 f2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 e4 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 6f 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 99 f2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca e3 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 6f 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 5a f2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b e3 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 6f 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 1b f2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c e3 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 6f 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 dc f1 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d e3 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 6e 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 9d f1 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce e2 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 6e 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 5e f1 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f e2 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 6e 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 d0 8b c7 f7 7f 00 00 e8 1f f1 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 e2 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 6f 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 d0 8b c7 f7 7f 00 00 e8 e3 f0 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 e2 b4 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 6e 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 d0 8b c7 f7 7f 00 00 e8 a7 f0 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 e1 b4 5e 48 b8 e0 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 6f 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 f4 b4 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 e5 b4 5e}
004dh mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7346e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6e 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 f4 b4 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 e5 b4 5e}
008ch mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7347028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 70 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 f3 b4 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 e5 b4 5e}
00cbh mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7347008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 70 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 f3 b4 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 e4 b4 5e}
010ah mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7346e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6e 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 f3 b4 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 e4 b4 5e}
0149h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7346f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6f 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 f3 b4 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 e4 b4 5e}
0188h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7346f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6f 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 f2 b4 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 e4 b4 5e}
01c7h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f2 b4 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca e3 b4 5e}
0206h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7346f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 6f 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f2 b4 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b e3 b4 5e}
0245h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7346fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 6f 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f2 b4 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c e3 b4 5e}
0284h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7346f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 6f 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc f1 b4 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d e3 b4 5e}
02c3h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7346ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6e 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f1 b4 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce e2 b4 5e}
0302h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7346ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 6e 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e f1 b4 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f e2 b4 5e}
0341h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7346ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 6e 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f f1 b4 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 e2 b4 5e}
0380h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7346fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6f 34 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 f0 b4 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 e2 b4 5e}
03bch mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7346e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 6e 34 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c78bd010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 8b c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f0 b4 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e1 b4 5e}
03f8h mov rax,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e3 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7346fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 6f 34 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 42 ef b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 e0 b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 71 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 03 ef b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 e0 b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 c4 ee b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 df b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 74 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 85 ee b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 df b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 71 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 46 ee b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 df b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 74 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 07 ee b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 df b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 74 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 c8 ed b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 de b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 74 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 89 ed b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba de b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 71 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 4a ed b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b de b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 74 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 0b ed b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c de b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 74 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 cc ec b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd dd b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 71 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 8d ec b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be dd b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 71 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 4e ec b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f dd b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 71 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 0f ec b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 dd b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 74 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 d3 eb b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 dd b4 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 71 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 d4 8b c7 f7 7f 00 00 e8 97 eb b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 dc b4 5e 48 b8 e0 e5 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 74 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 ef b4 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 e0 b4 5e}
004dh mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7347168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 71 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ef b4 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e0 b4 5e}
008ch mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7347508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 75 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 ee b4 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 df b4 5e}
00cbh mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c73474f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 74 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 ee b4 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 df b4 5e}
010ah mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7347178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 71 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 ee b4 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 df b4 5e}
0149h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7347498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 74 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ee b4 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 df b4 5e}
0188h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7347488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 74 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 ed b4 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 de b4 5e}
01c7h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73474a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 74 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 ed b4 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba de b4 5e}
0206h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c73471c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 71 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ed b4 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b de b4 5e}
0245h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73474d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 74 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b ed b4 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c de b4 5e}
0284h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73474b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 74 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ec b4 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd dd b4 5e}
02c3h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7347198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 71 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ec b4 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be dd b4 5e}
0302h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c73471b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 71 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ec b4 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f dd b4 5e}
0341h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c73471a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 71 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ec b4 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 dd b4 5e}
0380h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73474c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 74 34 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 eb b4 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 dd b4 5e}
03bch mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7347188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 71 34 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c78bd4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 8b c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 eb b4 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 dc b4 5e}
03f8h mov rax,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e5 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73474e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 74 34 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[938] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 32 ea b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 db b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 f3 e9 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 db b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 b4 e9 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 da b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 75 e9 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 da b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 36 e9 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 da b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 f7 e8 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 da b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 b8 e8 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 d9 b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 79 e8 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa d9 b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 3a e8 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b d9 b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 fb e7 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c d9 b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 bc e7 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed d8 b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 7d e7 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae d8 b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 3e e7 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f d8 b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 75 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 ff e6 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 d8 b4 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 75 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 d6 8b c7 f7 7f 00 00 e8 c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ea b4 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 db b4 5e}
004dh mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7347528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 75 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e9 b4 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 db b4 5e}
008ch mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7347618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 76 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e9 b4 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 da b4 5e}
00cbh mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7347608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 76 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 e9 b4 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 da b4 5e}
010ah mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7347538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 75 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 e9 b4 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 da b4 5e}
0149h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73475a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 75 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 e8 b4 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 da b4 5e}
0188h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7347598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 75 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 e8 b4 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d9 b4 5e}
01c7h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73475b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 75 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e8 b4 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d9 b4 5e}
0206h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7347588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 75 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e8 b4 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b d9 b4 5e}
0245h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73475e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 75 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb e7 b4 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c d9 b4 5e}
0284h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73475c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 75 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e7 b4 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d8 b4 5e}
02c3h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7347558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 75 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e7 b4 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae d8 b4 5e}
0302h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7347578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 75 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e e7 b4 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f d8 b4 5e}
0341h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7347568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 75 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff e6 b4 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 d8 b4 5e}
0380h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73475d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 75 34 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c78bd6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 8b c7 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 22 e5 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 d6 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 e3 e4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 d6 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 a4 e4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 d5 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 65 e4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 d5 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 26 e4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 d5 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 e7 e3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 d5 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 a8 e3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 d4 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 69 e3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a d4 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 2a e3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b d4 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 eb e2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c d4 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 ac e2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd d3 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 6d e2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e d3 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 2e e2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f d3 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 76 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 ef e1 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 d3 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 76 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 b3 e1 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 d2 b4 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 76 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 d8 8b c7 f7 7f 00 00 e8 77 e1 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 d2 b4 5e 48 b8 60 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 77 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 e5 b4 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 d6 b4 5e}
004dh mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7347648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 76 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 e4 b4 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 d6 b4 5e}
008ch mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7347738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 77 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 e4 b4 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 d5 b4 5e}
00cbh mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7347728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 77 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 e4 b4 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 d5 b4 5e}
010ah mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7347658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 76 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 e4 b4 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 d5 b4 5e}
0149h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73476c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 76 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 e3 b4 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 d5 b4 5e}
0188h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c73476b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 76 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 e3 b4 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 d4 b4 5e}
01c7h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73476d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 76 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e3 b4 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a d4 b4 5e}
0206h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c73476a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 76 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a e3 b4 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b d4 b4 5e}
0245h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7347708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 77 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb e2 b4 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c d4 b4 5e}
0284h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73476e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 76 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac e2 b4 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd d3 b4 5e}
02c3h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7347678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 76 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d e2 b4 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e d3 b4 5e}
0302h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7347698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 76 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e e2 b4 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f d3 b4 5e}
0341h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7347688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef e1 b4 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 d3 b4 5e}
0380h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73476f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 76 34 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 e1 b4 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 d2 b4 5e}
03bch mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7347668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 76 34 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c78bd8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d8 8b c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e1 b4 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 d2 b4 5e}
03f8h mov rax,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e6 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7347718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 77 34 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 da 8b c7 f7 7f 00 00 e8 12 e0 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 d1 b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 d3 df b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 d1 b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 78 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 94 df b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 d0 b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 78 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 55 df b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 d0 b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 16 df b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 d0 b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 d7 de b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 d0 b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 98 de b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 cf b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 59 de b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a cf b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 1a de b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b cf b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 78 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 db dd b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c cf b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 9c dd b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd ce b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 5d dd b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e ce b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 1e dd b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f ce b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 77 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 da 8b c7 f7 7f 00 00 e8 df dc b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 ce b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 78 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 da 8b c7 f7 7f 00 00 e8 a3 dc b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 cd b4 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 77 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 da 8b c7 f7 7f 00 00 e8 67 dc b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 cd b4 5e 48 b8 a0 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 78 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 e0 b4 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 d1 b4 5e}
004dh mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 df b4 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 d1 b4 5e}
008ch mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7347848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 78 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 df b4 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d0 b4 5e}
00cbh mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7347838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 78 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 df b4 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 d0 b4 5e}
010ah mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7347768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 77 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 df b4 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 d0 b4 5e}
0149h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73477d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 77 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 de b4 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 d0 b4 5e}
0188h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c73477c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 77 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 de b4 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 cf b4 5e}
01c7h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73477e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 77 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 de b4 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a cf b4 5e}
0206h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c73477b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 77 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a de b4 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b cf b4 5e}
0245h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7347818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 78 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db dd b4 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c cf b4 5e}
0284h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73477f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 77 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c dd b4 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd ce b4 5e}
02c3h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7347788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 77 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d dd b4 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e ce b4 5e}
0302h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c73477a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 77 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e dd b4 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f ce b4 5e}
0341h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7347798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 77 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df dc b4 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 ce b4 5e}
0380h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7347808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 78 34 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 dc b4 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 cd b4 5e}
03bch mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7347778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 77 34 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c78bdaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 8b c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 dc b4 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 cd b4 5e}
03f8h mov rax,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e6 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7347828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 78 34 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[122] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 00 dd 8b c7 f7 7f 00 00 e8 02 db b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 cc b4 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 78 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 00 dd 8b c7 f7 7f 00 00 e8 c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c78bdd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 dd 8b c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 db b4 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 cc b4 5e}
004dh mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7347878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 78 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78bdd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 dd 8b c7 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[894] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 df 8b c7 f7 7f 00 00 e8 f2 d5 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 c7 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 b3 d5 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 c6 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 74 d5 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 c6 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 35 d5 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 c6 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 f6 d4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 c6 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 b7 d4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 c5 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 78 d4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 c5 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 39 d4 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a c5 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 fa d3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b c5 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 bb d3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec c4 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 7c d3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad c4 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 3d d3 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e c4 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 fe d2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f c4 b4 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 84 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 df 8b c7 f7 7f 00 00 e8 bf d2 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 d5 b4 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 c7 b4 5e}
004dh mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7348410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 84 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 d5 b4 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 c6 b4 5e}
008ch mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7348500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 85 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 d5 b4 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 c6 b4 5e}
00cbh mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c73484f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 84 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 d5 b4 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 c6 b4 5e}
010ah mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7348420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 d4 b4 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c6 b4 5e}
0149h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7348490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 84 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 d4 b4 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 c5 b4 5e}
0188h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7348480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 84 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 d4 b4 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 c5 b4 5e}
01c7h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73484a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 84 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 d4 b4 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a c5 b4 5e}
0206h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7348470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 84 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa d3 b4 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b c5 b4 5e}
0245h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73484d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 84 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb d3 b4 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec c4 b4 5e}
0284h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73484b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 84 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c d3 b4 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad c4 b4 5e}
02c3h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7348440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 84 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d d3 b4 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e c4 b4 5e}
0302h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7348460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 84 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe d2 b4 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f c4 b4 5e}
0341h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7348450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 84 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c78bdf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 df 8b c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf d2 b4 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 f0 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 e1 8b c7 f7 7f 00 00 e8 e2 d0 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 c2 b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 a3 d0 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 c1 b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 86 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 64 d0 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 c1 b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 86 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 25 d0 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 c1 b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 e6 cf b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 c1 b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 a7 cf b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 c0 b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 68 cf b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 c0 b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 29 cf b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a c0 b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 ea ce b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b c0 b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 ab ce b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc bf b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 6c ce b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d bf b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 2d ce b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e bf b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 ee cd b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f bf b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 85 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 e1 8b c7 f7 7f 00 00 e8 af cd b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 be b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 85 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 e1 8b c7 f7 7f 00 00 e8 73 cd b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 be b4 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 85 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 e1 8b c7 f7 7f 00 00 e8 37 cd b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 be b4 5e 48 b8 60 e7 25 c6 f7 7f 00 00 48 89 46 18 48 b8 00 86 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 d0 b4 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 c2 b4 5e}
004dh mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7348530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 85 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 d0 b4 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 c1 b4 5e}
008ch mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7348620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 86 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 d0 b4 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 c1 b4 5e}
00cbh mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7348610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 86 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 d0 b4 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 c1 b4 5e}
010ah mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7348540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 85 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 cf b4 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c1 b4 5e}
0149h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73485b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 85 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 cf b4 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 c0 b4 5e}
0188h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c73485a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 85 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 cf b4 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 c0 b4 5e}
01c7h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73485c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 cf b4 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a c0 b4 5e}
0206h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7348590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 85 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea ce b4 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c0 b4 5e}
0245h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73485f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 85 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ce b4 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc bf b4 5e}
0284h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73485d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 85 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ce b4 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d bf b4 5e}
02c3h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7348560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 85 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d ce b4 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e bf b4 5e}
0302h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7348580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 85 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee cd b4 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f bf b4 5e}
0341h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7348570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 85 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af cd b4 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 be b4 5e}
0380h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73485e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 85 34 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 cd b4 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 be b4 5e}
03bch mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7348550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 85 34 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c78be120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e1 8b c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 cd b4 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 be b4 5e}
03f8h mov rax,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e7 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7348600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 86 34 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
