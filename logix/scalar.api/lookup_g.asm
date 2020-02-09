------------------------------------------------------------------------------------------------------------------------
; Shifter<byte> lookup<byte>(ShiftOpKind:byte kind)
; lookup_g[8u](ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 20 01 bd c8 f7 7f 00 00 e8 2a ee bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b df bb 5e 48 b8 00 e7 61 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 6b 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8bd0120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 01 bd c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a ee bb 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b df bb 5e}
0055h mov rax,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86a6ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 6b 6a c8 f7 7f 00 00}
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
; lookup_g[8i](ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 10 05 bd c8 f7 7f 00 00 e8 1a ec bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b dd bb 5e 48 b8 40 e7 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 6e 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8bd0510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 05 bd c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a ec bb 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b dd bb 5e}
0055h mov rax,7ff7c761e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e7 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86a6e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 6e 6a c8 f7 7f 00 00}
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
; lookup_g[16u](ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 00 09 bd c8 f7 7f 00 00 e8 0a ea bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b db bb 5e 48 b8 80 e7 61 c7 f7 7f 00 00 48 89 46 18 48 b8 90 6c 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8bd0900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 09 bd c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a ea bb 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b db bb 5e}
0055h mov rax,7ff7c761e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e7 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86a6c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 6c 6a c8 f7 7f 00 00}
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
; lookup_g[16i](ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 10 0b bd c8 f7 7f 00 00 e8 fa e3 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b d5 bb 5e 48 b8 c0 e7 61 c7 f7 7f 00 00 48 89 46 18 48 b8 48 6f 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8bd0b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0b bd c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa e3 bb 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b d5 bb 5e}
0055h mov rax,7ff7c761e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e7 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86a6f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 6f 6a c8 f7 7f 00 00}
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
; lookup_g[32u](ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 00 0f bd c8 f7 7f 00 00 e8 ea e1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b d3 bb 5e 48 b8 00 e8 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 6c 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8bd0f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 0f bd c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea e1 bb 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b d3 bb 5e}
0055h mov rax,7ff7c761e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e8 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86a6cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 6c 6a c8 f7 7f 00 00}
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
; lookup_g[32i](ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 10 11 bd c8 f7 7f 00 00 e8 da df bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b d1 bb 5e 48 b8 40 e8 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 84 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8bd1110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 11 bd c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da df bb 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d1 bb 5e}
0055h mov rax,7ff7c761e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86a84f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 84 6a c8 f7 7f 00 00}
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
; lookup_g[64u](ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 00 15 bd c8 f7 7f 00 00 e8 ca dd bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb ce bb 5e 48 b8 80 e8 61 c7 f7 7f 00 00 48 89 46 18 48 b8 50 6d 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8bd1500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 15 bd c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca dd bb 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ce bb 5e}
0055h mov rax,7ff7c761e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86a6d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 6d 6a c8 f7 7f 00 00}
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
; lookup_g[64i](ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 10 17 bd c8 f7 7f 00 00 e8 ba db bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb cc bb 5e 48 b8 c0 e8 61 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 85 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8bd1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 bd c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba db bb 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb cc bb 5e}
0055h mov rax,7ff7c761e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e8 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86a85b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 85 6a c8 f7 7f 00 00}
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
; lookup_g[8u](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 1c bd c8 f7 7f 00 00 e8 b0 d9 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 ca bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 d6 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 71 d9 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 ca bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 d5 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 32 d9 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 ca bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 d6 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 f3 d8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 ca bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 d6 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 1c bd c8 f7 7f 00 00 e8 b7 d8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 c9 bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 d5 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 1c bd c8 f7 7f 00 00 e8 7b d8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac c9 bb 5e 48 b8 00 e7 61 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 d5 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 d9 bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ca bb 5e}
004fh mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c869d648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d6 69 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 d9 bb 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 ca bb 5e}
008eh mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c869d5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d5 69 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 d9 bb 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 ca bb 5e}
00cdh mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c869d628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d6 69 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 d8 bb 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ca bb 5e}
010ch mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c869d608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d6 69 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 d8 bb 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 c9 bb 5e}
0148h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c869d5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d5 69 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b d8 bb 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c9 bb 5e}
0184h mov rax,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c869d5c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 d5 69 c8 f7 7f 00 00}
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
; lookup_g[8i](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 21 bd c8 f7 7f 00 00 e8 40 d7 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 c8 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 d7 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 01 d7 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 c8 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 d7 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 c2 d6 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 c7 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 d7 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 83 d6 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 c7 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 d7 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 21 bd c8 f7 7f 00 00 e8 47 d6 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 c7 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 d7 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 21 bd c8 f7 7f 00 00 e8 0b d6 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c c7 bb 5e 48 b8 00 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 98 d7 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 d7 bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 c8 bb 5e}
004fh mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c869d7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d7 69 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 d7 bb 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 c8 bb 5e}
008eh mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c869d788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d7 69 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 d6 bb 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 c7 bb 5e}
00cdh mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c869d7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d7 69 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 d6 bb 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c7 bb 5e}
010ch mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c869d7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d7 69 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 d6 bb 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 c7 bb 5e}
0148h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c869d7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d7 69 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d6 bb 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c7 bb 5e}
0184h mov rax,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e9 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c869d798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 d7 69 c8 f7 7f 00 00}
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
; lookup_g[16u](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 23 bd c8 f7 7f 00 00 e8 d0 d4 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 c6 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 e0 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 91 d4 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 c5 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 d8 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 52 d4 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 c5 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 e0 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 13 d4 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 c5 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 e0 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 23 bd c8 f7 7f 00 00 e8 d7 d3 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 c5 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 d8 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 23 bd c8 f7 7f 00 00 e8 9b d3 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc c4 bb 5e 48 b8 40 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 d8 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 d4 bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 c6 bb 5e}
004fh mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c869e040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e0 69 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 d4 bb 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c5 bb 5e}
008eh mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c869d828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d8 69 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 d4 bb 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 c5 bb 5e}
00cdh mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c869e030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e0 69 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 d4 bb 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 c5 bb 5e}
010ch mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c869e020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e0 69 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 d3 bb 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 c5 bb 5e}
0148h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c869d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 69 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b d3 bb 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc c4 bb 5e}
0184h mov rax,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c869d838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 d8 69 c8 f7 7f 00 00}
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
; lookup_g[16i](ComparisonKind~8u)[77] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 25 bd c8 f7 7f 00 00 e8 60 d2 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 d2 bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 91 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_g[32u](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 27 bd c8 f7 7f 00 00 e8 f0 cf bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 c1 bb 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 e1 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 27 bd c8 f7 7f 00 00 e8 b1 cf bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 c0 bb 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 e1 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 27 bd c8 f7 7f 00 00 e8 72 cf bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 c0 bb 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 e1 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 27 bd c8 f7 7f 00 00 e8 33 cf bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 c0 bb 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 e1 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 27 bd c8 f7 7f 00 00 e8 f7 ce bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 c0 bb 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 e1 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 27 bd c8 f7 7f 00 00 e8 bb ce bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec bf bb 5e 48 b8 c0 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 40 e1 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8bd2790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 27 bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 cf bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 c1 bb 5e}
004fh mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c869e180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e1 69 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8bd2790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 27 bd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 cf bb 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c0 bb 5e}
008eh mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c869e130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e1 69 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8bd2790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 27 bd c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 cf bb 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c0 bb 5e}
00cdh mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c869e170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e1 69 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8bd2790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 27 bd c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 cf bb 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c0 bb 5e}
010ch mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c869e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 69 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8bd2790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 27 bd c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 ce bb 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 c0 bb 5e}
0148h mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c869e150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e1 69 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8bd2790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 27 bd c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ce bb 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec bf bb 5e}
0184h mov rax,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e9 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c869e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 69 c8 f7 7f 00 00}
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
; lookup_g[32i](ComparisonKind~8u)[250] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 29 bd c8 f7 7f 00 00 e8 80 cd bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 be bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 e2 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 41 cd bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 be bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 e1 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 02 cd bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 be bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 e2 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 c3}
; TermCode = CTC_RET_INTR
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
0031h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 cd bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 be bb 5e}
004fh mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c869e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 69 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 cd bb 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 be bb 5e}
008eh mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c869e1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e1 69 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 cd bb 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 be bb 5e}
00cdh mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c869e210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e2 69 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_g[64u](ComparisonKind~8u)[202] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 2b bd c8 f7 7f 00 00 e8 10 cb bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 bc bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 e2 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 d1 ca bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 bc bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 e2 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 92 ca bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 cb bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 bc bb 5e}
004fh mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c869e2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e2 69 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 ca bb 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 bc bb 5e}
008eh mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c869e270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e2 69 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 ca bb 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(ComparisonKind:byte kind)
; lookup_g[64i](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 2d bd c8 f7 7f 00 00 e8 a0 c8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 b9 bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 e3 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 61 c8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 b9 bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 e3 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 22 c8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 b9 bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 e3 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 e3 c7 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 b9 bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 e3 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 2d bd c8 f7 7f 00 00 e8 a7 c7 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 b8 bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 e3 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 2d bd c8 f7 7f 00 00 e8 6b c7 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c b8 bb 5e 48 b8 80 ea 61 c7 f7 7f 00 00 48 89 46 18 48 b8 20 e3 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 c8 bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 b9 bb 5e}
004fh mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c869e360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e3 69 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 c8 bb 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 b9 bb 5e}
008eh mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c869e310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e3 69 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 c8 bb 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 b9 bb 5e}
00cdh mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c869e350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e3 69 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 c7 bb 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 b9 bb 5e}
010ch mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c869e340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e3 69 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 c7 bb 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 b8 bb 5e}
0148h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c869e330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 69 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b c7 bb 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c b8 bb 5e}
0184h mov rax,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 ea 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c869e320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e3 69 c8 f7 7f 00 00}
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
; lookup_g[32f](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 2f bd c8 f7 7f 00 00 e8 30 c2 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 b3 bb 5e 48 b9 c0 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 a6 6a c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 2f bd c8 f7 7f 00 00 e8 f1 c1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 b3 bb 5e 48 b9 c0 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 a6 6a c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 2f bd c8 f7 7f 00 00 e8 b2 c1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 b2 bb 5e 48 b9 c0 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 a6 6a c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 2f bd c8 f7 7f 00 00 e8 73 c1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 b2 bb 5e 48 b9 c0 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 a6 6a c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 2f bd c8 f7 7f 00 00 e8 37 c1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 b2 bb 5e 48 b9 c0 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 a6 6a c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 2f bd c8 f7 7f 00 00 e8 fb c0 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c b2 bb 5e 48 b8 c0 ea 61 c7 f7 7f 00 00 48 89 46 18 48 b8 90 a6 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8bd2fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 c2 bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 b3 bb 5e}
004fh mov rcx,7ff7c761eac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ea 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86aa6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a6 6a c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8bd2fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f bd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 c1 bb 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 b3 bb 5e}
008eh mov rcx,7ff7c761eac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ea 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86aa680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a6 6a c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8bd2fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f bd c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c1 bb 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 b2 bb 5e}
00cdh mov rcx,7ff7c761eac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ea 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86aa6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a6 6a c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8bd2fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f bd c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 c1 bb 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b2 bb 5e}
010ch mov rcx,7ff7c761eac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ea 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86aa6b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a6 6a c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8bd2fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f bd c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 c1 bb 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 b2 bb 5e}
0148h mov rcx,7ff7c761eac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ea 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c86aa6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a6 6a c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8bd2fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f bd c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb c0 bb 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c b2 bb 5e}
0184h mov rax,7ff7c761eac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 ea 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c86aa690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 a6 6a c8 f7 7f 00 00}
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
; lookup_g[64f](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 34 bd c8 f7 7f 00 00 e8 c0 bf bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 b0 bb 5e 48 b9 00 eb 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 a7 6a c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 34 bd c8 f7 7f 00 00 e8 81 bf bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 b0 bb 5e 48 b9 00 eb 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 a7 6a c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 34 bd c8 f7 7f 00 00 e8 42 bf bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 b0 bb 5e 48 b9 00 eb 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 a7 6a c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 34 bd c8 f7 7f 00 00 e8 03 bf bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 b0 bb 5e 48 b9 00 eb 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 a7 6a c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 34 bd c8 f7 7f 00 00 e8 c7 be bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 af bb 5e 48 b9 00 eb 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 a7 6a c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 34 bd c8 f7 7f 00 00 e8 8b be bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc af bb 5e 48 b8 00 eb 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 a7 6a c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8bd3480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 34 bd c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 bf bb 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 b0 bb 5e}
004fh mov rcx,7ff7c761eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86aa778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a7 6a c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8bd3480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 34 bd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 bf bb 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b0 bb 5e}
008eh mov rcx,7ff7c761eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86aa728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a7 6a c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8bd3480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 34 bd c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 bf bb 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 b0 bb 5e}
00cdh mov rcx,7ff7c761eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86aa768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a7 6a c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8bd3480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 34 bd c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 bf bb 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b0 bb 5e}
010ch mov rcx,7ff7c761eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86aa758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a7 6a c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8bd3480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 34 bd c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 be bb 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 af bb 5e}
0148h mov rcx,7ff7c761eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c86aa748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a7 6a c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8bd3480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 34 bd c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b be bb 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc af bb 5e}
0184h mov rax,7ff7c761eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 eb 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c86aa738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 a7 6a c8 f7 7f 00 00}
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
; lookup_g[8u](UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 e0 3a bd c8 f7 7f 00 00 e8 67 bd bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 ae bb 5e 48 b8 40 eb 61 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 cb 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c8bd3ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 3a bd c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 bd bb 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 ae bb 5e}
0038h mov rax,7ff7c761eb40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 eb 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c869cbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 cb 69 c8 f7 7f 00 00}
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
; lookup_g[8i](UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 10 3e bd c8 f7 7f 00 00 e8 17 bc bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 ad bb 5e 48 b8 70 eb 61 c7 f7 7f 00 00 48 89 46 18 48 b8 40 cc 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c8bd3e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 3e bd c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 bc bb 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ad bb 5e}
0038h mov rax,7ff7c761eb70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 eb 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c869cc40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 cc 69 c8 f7 7f 00 00}
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
; lookup_g[16u](UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 20 40 bd c8 f7 7f 00 00 e8 c7 ba bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 ab bb 5e 48 b8 a0 eb 61 c7 f7 7f 00 00 48 89 46 18 48 b8 80 cc 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c8bd4020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 40 bd c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 ba bb 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 ab bb 5e}
0038h mov rax,7ff7c761eba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 eb 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c869cc80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 cc 69 c8 f7 7f 00 00}
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
; lookup_g[16i](UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 30 42 bd c8 f7 7f 00 00 e8 77 b9 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 aa bb 5e 48 b8 d0 eb 61 c7 f7 7f 00 00 48 89 46 18 48 b8 78 d4 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c8bd4230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 42 bd c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b9 bb 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 aa bb 5e}
0038h mov rax,7ff7c761ebd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 eb 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c869d478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 d4 69 c8 f7 7f 00 00}
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
; lookup_g[32u](UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 44 bd c8 f7 7f 00 00 e8 27 b8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 a9 bb 5e 48 b8 d0 dc 61 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 d4 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c8bd4440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 44 bd c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 b8 bb 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 a9 bb 5e}
0038h mov rax,7ff7c761dcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 dc 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c869d4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 d4 69 c8 f7 7f 00 00}
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
; lookup_g[32i](UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 50 46 bd c8 f7 7f 00 00 e8 d7 b6 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 a8 bb 5e 48 b8 80 d2 61 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 d4 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c8bd4650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 46 bd c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b6 bb 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 a8 bb 5e}
0038h mov rax,7ff7c761d280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 d2 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c869d4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 d4 69 c8 f7 7f 00 00}
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
; lookup_g[64u](UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 60 48 bd c8 f7 7f 00 00 e8 87 b5 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 a6 bb 5e 48 b8 00 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 28 d5 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c8bd4860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 48 bd c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 b5 bb 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 a6 bb 5e}
0038h mov rax,7ff7c761ec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ec 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c869d528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 d5 69 c8 f7 7f 00 00}
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
; lookup_g[64i](UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 70 4a bd c8 f7 7f 00 00 e8 37 b4 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 a5 bb 5e 48 b8 30 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 58 d5 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c8bd4a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 4a bd c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 b4 bb 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 a5 bb 5e}
0038h mov rax,7ff7c761ec30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 ec 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c869d558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 d5 69 c8 f7 7f 00 00}
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
; lookup_g[8u](BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 1c bd c8 f7 7f 00 00 e8 d2 ae bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 a0 bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 b3 69 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 93 ae bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 9f bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 b5 69 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 54 ae bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 9f bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 b5 69 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 15 ae bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 9f bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 b4 69 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 d6 ad bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 9f bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 b4 69 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 97 ad bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 9e bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 b4 69 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 58 ad bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 9e bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 b5 69 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 19 ad bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 9e bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 b4 69 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 da ac bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 9e bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 b5 69 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 9b ac bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 9d bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 b5 69 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 5c ac bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 9d bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 b4 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 1d ac bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 9d bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 b4 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 de ab bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 9d bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 b4 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 1c bd c8 f7 7f 00 00 e8 9f ab bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 9c bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 b5 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 1c bd c8 f7 7f 00 00 e8 63 ab bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 9c bb 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 b4 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 1c bd c8 f7 7f 00 00 e8 27 ab bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 9c bb 5e 48 b8 00 e7 61 c7 f7 7f 00 00 48 89 46 18 48 b8 98 b5 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ae bb 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 a0 bb 5e}
004dh mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c869b3f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b3 69 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 ae bb 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 9f bb 5e}
008ch mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c869b5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b5 69 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 ae bb 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 9f bb 5e}
00cbh mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c869b5b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b5 69 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 ae bb 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 9f bb 5e}
010ah mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c869b418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b4 69 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 ad bb 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 9f bb 5e}
0149h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c869b4f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b4 69 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 ad bb 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 9e bb 5e}
0188h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c869b4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b4 69 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ad bb 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 9e bb 5e}
01c7h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c869b518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b5 69 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ad bb 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 9e bb 5e}
0206h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c869b4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b4 69 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da ac bb 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 9e bb 5e}
0245h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c869b578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 b5 69 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b ac bb 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 9d bb 5e}
0284h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c869b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 69 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ac bb 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 9d bb 5e}
02c3h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c869b458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b4 69 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d ac bb 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 9d bb 5e}
0302h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c869b498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b4 69 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de ab bb 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 9d bb 5e}
0341h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c869b478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 b4 69 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ab bb 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 9c bb 5e}
0380h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c869b558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b5 69 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 ab bb 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 9c bb 5e}
03bch mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c869b438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b4 69 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8bd1cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c bd c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 ab bb 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 9c bb 5e}
03f8h mov rax,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c869b598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 b5 69 c8 f7 7f 00 00}
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
; lookup_g[8i](BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 21 bd c8 f7 7f 00 00 e8 c2 a9 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 9a bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 b7 69 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 83 a9 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 9a bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 44 a9 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 9a bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 05 a9 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 9a bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 b7 69 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 c6 a8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 99 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 87 a8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 99 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 b7 69 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 48 a8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 99 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 09 a8 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 99 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 b7 69 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 ca a7 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 98 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 8b a7 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 98 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 4c a7 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 98 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 b7 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 0d a7 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 98 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 b7 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 ce a6 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 97 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 b7 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 21 bd c8 f7 7f 00 00 e8 8f a6 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 97 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 ba 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 21 bd c8 f7 7f 00 00 e8 53 a6 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 97 bb 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 b7 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 21 bd c8 f7 7f 00 00 e8 17 a6 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 97 bb 5e 48 b8 00 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 58 ba 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 a9 bb 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 9a bb 5e}
004dh mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c869b718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b7 69 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 a9 bb 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 9a bb 5e}
008ch mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c869ba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 69 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a9 bb 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 9a bb 5e}
00cbh mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c869ba68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ba 69 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 a9 bb 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 9a bb 5e}
010ah mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c869b728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 b7 69 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 a8 bb 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 99 bb 5e}
0149h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c869ba08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ba 69 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 a8 bb 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 99 bb 5e}
0188h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c869b788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 b7 69 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 a8 bb 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 99 bb 5e}
01c7h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c869ba18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ba 69 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a8 bb 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 99 bb 5e}
0206h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c869b778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 b7 69 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca a7 bb 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 98 bb 5e}
0245h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c869ba48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ba 69 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b a7 bb 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 98 bb 5e}
0284h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c869ba28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ba 69 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c a7 bb 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 98 bb 5e}
02c3h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c869b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 69 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d a7 bb 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 98 bb 5e}
0302h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c869b768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 b7 69 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce a6 bb 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 97 bb 5e}
0341h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c869b758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b7 69 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a6 bb 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 97 bb 5e}
0380h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c869ba38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ba 69 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 a6 bb 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 97 bb 5e}
03bch mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c869b738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b7 69 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8bd2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 bd c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a6 bb 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 97 bb 5e}
03f8h mov rax,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e9 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c869ba58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 ba 69 c8 f7 7f 00 00}
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
; lookup_g[16u](BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 23 bd c8 f7 7f 00 00 e8 b2 a4 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 95 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 73 a4 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 95 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 34 a4 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 95 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 f5 a3 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 95 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 b6 a3 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 94 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 77 a3 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 94 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 38 a3 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 94 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 f9 a2 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 94 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 ba a2 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 93 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 7b a2 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 93 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 3c a2 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 93 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 fd a1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 93 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 be a1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 92 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 ba 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 23 bd c8 f7 7f 00 00 e8 7f a1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 92 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 bb 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 23 bd c8 f7 7f 00 00 e8 43 a1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 92 bb 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 ba 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 23 bd c8 f7 7f 00 00 e8 07 a1 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 92 bb 5e 48 b8 40 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 68 bb 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 a4 bb 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 95 bb 5e}
004dh mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c869ba98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ba 69 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 a4 bb 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 95 bb 5e}
008ch mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c869bb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 bb 69 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a4 bb 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 95 bb 5e}
00cbh mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c869bb78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 bb 69 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 a3 bb 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 95 bb 5e}
010ah mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c869baa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ba 69 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 a3 bb 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 94 bb 5e}
0149h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c869bb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 bb 69 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a3 bb 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 94 bb 5e}
0188h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c869bb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 bb 69 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a3 bb 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 94 bb 5e}
01c7h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c869bb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 69 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a2 bb 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 94 bb 5e}
0206h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c869baf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ba 69 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba a2 bb 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 93 bb 5e}
0245h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c869bb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bb 69 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b a2 bb 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 93 bb 5e}
0284h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c869bb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb 69 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c a2 bb 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 93 bb 5e}
02c3h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c869bac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ba 69 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd a1 bb 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 93 bb 5e}
0302h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c869bae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ba 69 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be a1 bb 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 92 bb 5e}
0341h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c869bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 69 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f a1 bb 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 92 bb 5e}
0380h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c869bb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bb 69 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 a1 bb 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 92 bb 5e}
03bch mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c869bab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ba 69 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8bd2370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 bd c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 a1 bb 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 92 bb 5e}
03f8h mov rax,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c869bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 bb 69 c8 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(BinaryBitLogicKind:byte kind)
; lookup_g[16i](BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 25 bd c8 f7 7f 00 00 e8 a2 9f bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 90 bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 63 9f bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 90 bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 bc 69 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 24 9f bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 90 bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 bc 69 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 e5 9e bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 90 bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 a6 9e bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 8f bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 bc 69 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 67 9e bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 8f bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 bc 69 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 28 9e bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 8f bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 bc 69 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 e9 9d bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 8f bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 bc 69 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 aa 9d bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 8e bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 bc 69 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 6b 9d bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 8e bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 bc 69 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 2c 9d bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 8e bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 ed 9c bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 8e bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 bc 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 ae 9c bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 8d bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 bb 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 25 bd c8 f7 7f 00 00 e8 6f 9c bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 8d bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 bc 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 25 bd c8 f7 7f 00 00 e8 33 9c bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 8d bb 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 bb 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 25 bd c8 f7 7f 00 00 e8 f7 9b bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 8d bb 5e 48 b8 80 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 bc 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 9f bb 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 90 bb 5e}
004dh mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c869bbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 bb 69 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 9f bb 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 90 bb 5e}
008ch mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c869bca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bc 69 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 9f bb 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 90 bb 5e}
00cbh mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c869bc98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 bc 69 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 9e bb 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 90 bb 5e}
010ah mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c869bbc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 bb 69 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 9e bb 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 8f bb 5e}
0149h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c869bc38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bc 69 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 9e bb 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 8f bb 5e}
0188h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c869bc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bc 69 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 9e bb 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 8f bb 5e}
01c7h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c869bc48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bc 69 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 9d bb 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 8f bb 5e}
0206h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c869bc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 bc 69 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 9d bb 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 8e bb 5e}
0245h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c869bc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 bc 69 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 9d bb 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 8e bb 5e}
0284h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c869bc58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bc 69 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 9d bb 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 8e bb 5e}
02c3h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c869bbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bb 69 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 9c bb 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 8e bb 5e}
0302h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c869bc08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 bc 69 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 9c bb 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 8d bb 5e}
0341h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c869bbf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 bb 69 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 9c bb 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 8d bb 5e}
0380h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c869bc68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bc 69 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 9c bb 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 8d bb 5e}
03bch mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c869bbd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bb 69 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8bd2580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 25 bd c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 9b bb 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 8d bb 5e}
03f8h mov rax,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c869bc88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 bc 69 c8 f7 7f 00 00}
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
; lookup_g[32u](BinaryBitLogicKind~8u)[74] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 27 bd c8 f7 7f 00 00 e8 92 9a bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c8bd2790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 27 bd c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 9a bb 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(BinaryBitLogicKind:byte kind)
; lookup_g[32i](BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 29 bd c8 f7 7f 00 00 e8 82 95 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 86 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 bd 69 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 43 95 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 86 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 04 95 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 86 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 c5 94 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 85 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 bd 69 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 86 94 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 85 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 c8 69 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 47 94 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 85 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 c8 69 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 08 94 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 85 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 c9 93 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 84 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 c8 69 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 8a 93 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 84 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 4b 93 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 84 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 0c 93 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 84 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 c8 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 cd 92 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 83 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 c8 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 8e 92 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 83 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 c8 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 29 bd c8 f7 7f 00 00 e8 4f 92 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 83 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 c9 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 29 bd c8 f7 7f 00 00 e8 13 92 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 83 bb 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 c8 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 29 bd c8 f7 7f 00 00 e8 d7 91 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 83 bb 5e 48 b8 00 ea 61 c7 f7 7f 00 00 48 89 46 18 48 b8 40 c9 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 95 bb 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 86 bb 5e}
004dh mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c869bde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bd 69 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 95 bb 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 86 bb 5e}
008ch mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c869c960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c9 69 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 95 bb 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 86 bb 5e}
00cbh mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c869c950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 c9 69 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 94 bb 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 85 bb 5e}
010ah mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c869bdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 bd 69 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 94 bb 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 85 bb 5e}
0149h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c869c8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 c8 69 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 94 bb 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 85 bb 5e}
0188h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c869c8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c8 69 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 94 bb 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 85 bb 5e}
01c7h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c869c900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c9 69 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 93 bb 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 84 bb 5e}
0206h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c869c8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c8 69 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 93 bb 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 84 bb 5e}
0245h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c869c930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c9 69 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 93 bb 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 84 bb 5e}
0284h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c869c910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 c9 69 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 93 bb 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 84 bb 5e}
02c3h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c869c8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c8 69 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 92 bb 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 83 bb 5e}
0302h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c869c8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 c8 69 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 92 bb 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 83 bb 5e}
0341h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c869c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c8 69 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 92 bb 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 83 bb 5e}
0380h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c869c920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c9 69 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 92 bb 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 83 bb 5e}
03bch mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c869c890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c8 69 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8bd29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 bd c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 91 bb 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 83 bb 5e}
03f8h mov rax,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c869c940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 c9 69 c8 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
; lookup_g[64u](BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 2b bd c8 f7 7f 00 00 e8 72 90 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 81 bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 33 90 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 81 bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 f4 8f bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 81 bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 b5 8f bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 80 bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 76 8f bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 80 bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 37 8f bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 80 bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 f8 8e bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 80 bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 b9 8e bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 7f bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 7a 8e bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 7f bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 3b 8e bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 7f bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 fc 8d bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 7f bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 bd 8d bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 7e bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 7e 8d bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 7e bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 c9 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 2b bd c8 f7 7f 00 00 e8 3f 8d bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 7e bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 ca 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 2b bd c8 f7 7f 00 00 e8 03 8d bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 7e bb 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 c9 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 2b bd c8 f7 7f 00 00 e8 c7 8c bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 7d bb 5e 48 b8 40 ea 61 c7 f7 7f 00 00 48 89 46 18 48 b8 50 ca 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 90 bb 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 81 bb 5e}
004dh mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c869c980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c9 69 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 90 bb 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 81 bb 5e}
008ch mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c869ca70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ca 69 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 8f bb 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 81 bb 5e}
00cbh mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c869ca60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ca 69 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 8f bb 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 80 bb 5e}
010ah mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c869c990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c9 69 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 8f bb 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 80 bb 5e}
0149h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c869ca00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ca 69 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 8f bb 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 80 bb 5e}
0188h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c869c9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 c9 69 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 8e bb 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 80 bb 5e}
01c7h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c869ca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 69 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 8e bb 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 7f bb 5e}
0206h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c869c9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c9 69 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 8e bb 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 7f bb 5e}
0245h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c869ca40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ca 69 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 8e bb 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 7f bb 5e}
0284h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c869ca20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ca 69 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 8d bb 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 7f bb 5e}
02c3h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c869c9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c9 69 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 8d bb 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 7e bb 5e}
0302h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c869c9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c9 69 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 8d bb 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 7e bb 5e}
0341h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c869c9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 c9 69 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 8d bb 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 7e bb 5e}
0380h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c869ca30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ca 69 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 8d bb 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 7e bb 5e}
03bch mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c869c9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c9 69 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8bd2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b bd c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 8c bb 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 7d bb 5e}
03f8h mov rax,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c869ca50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 ca 69 c8 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(BinaryBitLogicKind:byte kind)
; lookup_g[64i](BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 2d bd c8 f7 7f 00 00 e8 62 8b bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 7c bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 23 8b bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 7c bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 cb 69 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 e4 8a bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 7c bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 cb 69 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 a5 8a bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 7b bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 66 8a bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 7b bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 cb 69 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 27 8a bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 7b bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 cb 69 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 e8 89 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 7b bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 cb 69 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 a9 89 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 7a bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 cb 69 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 6a 89 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 7a bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 cb 69 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 2b 89 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 7a bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 cb 69 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 ec 88 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 7a bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 ad 88 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 79 bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 6e 88 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 79 bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 ca 69 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 2d bd c8 f7 7f 00 00 e8 2f 88 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 79 bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 cb 69 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 2d bd c8 f7 7f 00 00 e8 f3 87 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 79 bb 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 ca 69 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 2d bd c8 f7 7f 00 00 e8 b7 87 bb 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 78 bb 5e 48 b8 80 ea 61 c7 f7 7f 00 00 48 89 46 18 48 b8 70 cb 69 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 8b bb 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 7c bb 5e}
004dh mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c869caa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ca 69 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 8b bb 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 7c bb 5e}
008ch mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c869cb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 cb 69 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 8a bb 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 7c bb 5e}
00cbh mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c869cb80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cb 69 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 8a bb 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 7b bb 5e}
010ah mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c869cab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ca 69 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 8a bb 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 7b bb 5e}
0149h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c869cb20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 cb 69 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 8a bb 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 7b bb 5e}
0188h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c869cb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 cb 69 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 89 bb 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 7b bb 5e}
01c7h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c869cb30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 cb 69 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 89 bb 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 7a bb 5e}
0206h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c869cb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 cb 69 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 89 bb 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 7a bb 5e}
0245h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c869cb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 cb 69 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 89 bb 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 7a bb 5e}
0284h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c869cb40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 cb 69 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 88 bb 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 7a bb 5e}
02c3h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c869cad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ca 69 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 88 bb 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 79 bb 5e}
0302h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c869caf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ca 69 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 88 bb 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 79 bb 5e}
0341h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c869cae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ca 69 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 88 bb 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 79 bb 5e}
0380h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c869cb50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cb 69 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 87 bb 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 79 bb 5e}
03bch mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c869cac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ca 69 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8bd2dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2d bd c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 87 bb 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 78 bb 5e}
03f8h mov rax,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 ea 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c869cb70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 cb 69 c8 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
