------------------------------------------------------------------------------------------------------------------------
; Shifter<byte> lookup<byte>(ShiftOpKind:byte kind)
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 00 47 c9 c8 f7 7f 00 00 e8 ea 26 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 18 b3 5e 48 b8 a0 e4 63 c7 f7 7f 00 00 48 89 46 18 48 b8 20 33 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c94700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 47 c9 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 26 b3 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 18 b3 5e}
0055h mov rax,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e4 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8733320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 33 73 c8 f7 7f 00 00}
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
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 f0 4a c9 c8 f7 7f 00 00 e8 da 24 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 16 b3 5e 48 b8 e0 e4 63 c7 f7 7f 00 00 48 89 46 18 48 b8 08 36 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c94af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 4a c9 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 24 b3 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 16 b3 5e}
0055h mov rax,7ff7c763e4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e4 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8733608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 36 73 c8 f7 7f 00 00}
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
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e0 4e c9 c8 f7 7f 00 00 e8 ca 22 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 13 b3 5e 48 b8 20 e5 63 c7 f7 7f 00 00 48 89 46 18 48 b8 10 34 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c94ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4e c9 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 22 b3 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 13 b3 5e}
0055h mov rax,7ff7c763e520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e5 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8733410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 34 73 c8 f7 7f 00 00}
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
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 f0 50 c9 c8 f7 7f 00 00 e8 ba 1c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 0d b3 5e 48 b8 60 e5 63 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 36 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c950f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 50 c9 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 1c b3 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 0d b3 5e}
0055h mov rax,7ff7c763e560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e5 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c87336a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 36 73 c8 f7 7f 00 00}
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
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e0 54 c9 c8 f7 7f 00 00 e8 aa 1a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 0b b3 5e 48 b8 a0 e5 63 c7 f7 7f 00 00 48 89 46 18 48 b8 70 34 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c954e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 54 c9 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 1a b3 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 0b b3 5e}
0055h mov rax,7ff7c763e5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e5 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8733470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 34 73 c8 f7 7f 00 00}
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
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 f0 56 c9 c8 f7 7f 00 00 e8 9a 18 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cb 09 b3 5e 48 b8 e0 e5 63 c7 f7 7f 00 00 48 89 46 18 48 b8 70 4c 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c956f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 56 c9 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 18 b3 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 09 b3 5e}
0055h mov rax,7ff7c763e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e5 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8734c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 4c 73 c8 f7 7f 00 00}
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
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e0 5a c9 c8 f7 7f 00 00 e8 8a 16 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 07 b3 5e 48 b8 20 e6 63 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 34 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c95ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a c9 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 16 b3 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 07 b3 5e}
0055h mov rax,7ff7c763e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e6 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c87334d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 34 73 c8 f7 7f 00 00}
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
; lookup_gShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 f0 5c c9 c8 f7 7f 00 00 e8 7a 14 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 05 b3 5e 48 b8 60 e6 63 c7 f7 7f 00 00 48 89 46 18 48 b8 30 4d 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c95cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5c c9 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 14 b3 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 05 b3 5e}
0055h mov rax,7ff7c763e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e6 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8734d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 4d 73 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 62 c9 c8 f7 7f 00 00 e8 70 12 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 03 b3 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 9c 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 62 c9 c8 f7 7f 00 00 e8 31 12 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 03 b3 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 9c 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 62 c9 c8 f7 7f 00 00 e8 f2 11 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 03 b3 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 9c 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 62 c9 c8 f7 7f 00 00 e8 b3 11 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 02 b3 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 9c 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 62 c9 c8 f7 7f 00 00 e8 77 11 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 02 b3 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 9c 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 62 c9 c8 f7 7f 00 00 e8 3b 11 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 02 b3 5e 48 b8 a0 e4 63 c7 f7 7f 00 00 48 89 46 18 48 b8 58 9c 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c96290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 62 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 12 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 03 b3 5e}
004fh mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8729cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9c 72 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c96290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 62 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 12 b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 03 b3 5e}
008eh mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8729c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9c 72 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c96290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 62 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 11 b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 03 b3 5e}
00cdh mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8729cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 9c 72 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c96290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 62 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 11 b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 02 b3 5e}
010ch mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8729c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9c 72 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c96290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 62 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 11 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 02 b3 5e}
0148h mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c8729c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9c 72 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c96290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 62 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 11 b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 02 b3 5e}
0184h mov rax,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e4 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c8729c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 9c 72 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 67 c9 c8 f7 7f 00 00 e8 00 10 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 01 b3 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 9e 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 c1 0f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 00 b3 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 9e 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 82 0f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 00 b3 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 9e 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 43 0f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 00 b3 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 9e 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 67 c9 c8 f7 7f 00 00 e8 07 0f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 00 b3 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 9e 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 67 c9 c8 f7 7f 00 00 e8 cb 0e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc ff b2 5e 48 b8 a0 e6 63 c7 f7 7f 00 00 48 89 46 18 48 b8 28 9e 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 10 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 01 b3 5e}
004fh mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8729e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9e 72 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 0f b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 00 b3 5e}
008eh mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8729e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9e 72 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 0f b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 00 b3 5e}
00cdh mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8729e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 9e 72 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 0f b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 00 b3 5e}
010ch mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8729e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 9e 72 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 0f b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 00 b3 5e}
0148h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c8729e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9e 72 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 0e b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc ff b2 5e}
0184h mov rax,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e6 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c8729e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 9e 72 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 69 c9 c8 f7 7f 00 00 e8 90 0d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 fe b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 a7 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 51 0d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 fe b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 a7 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 12 0d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 fe b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 a7 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 d3 0c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 fe b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 a7 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 69 c9 c8 f7 7f 00 00 e8 97 0c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 fd b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 a7 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 69 c9 c8 f7 7f 00 00 e8 5b 0c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8c fd b2 5e 48 b8 e0 e6 63 c7 f7 7f 00 00 48 89 46 18 48 b8 70 a7 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 0d b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fe b2 5e}
004fh mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c872a7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a7 72 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 0d b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 fe b2 5e}
008eh mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c872a760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a7 72 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 0d b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 fe b2 5e}
00cdh mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c872a7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a7 72 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 0c b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 fe b2 5e}
010ch mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c872a790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a7 72 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 0c b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 fd b2 5e}
0148h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c872a780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a7 72 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 0c b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c fd b2 5e}
0184h mov rax,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e6 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c872a770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 a7 72 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 6b c9 c8 f7 7f 00 00 e8 20 0b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 fc b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 a8 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 e1 0a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 fc b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 a8 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 a2 0a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 fb b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 a8 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 63 0a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 fb b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 a8 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 6b c9 c8 f7 7f 00 00 e8 27 0a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 fb b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 a8 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 6b c9 c8 f7 7f 00 00 e8 eb 09 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c fb b2 5e 48 b8 20 e7 63 c7 f7 7f 00 00 48 89 46 18 48 b8 10 a8 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 0b b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 fc b2 5e}
004fh mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c872a850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a8 72 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 0a b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fc b2 5e}
008eh mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c872a800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a8 72 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 0a b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 fb b2 5e}
00cdh mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c872a840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a8 72 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 0a b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 fb b2 5e}
010ch mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c872a830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a8 72 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 0a b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 fb b2 5e}
0148h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c872a820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a8 72 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 09 b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c fb b2 5e}
0184h mov rax,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e7 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c872a810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 a8 72 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 6d c9 c8 f7 7f 00 00 e8 b0 08 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 f9 b2 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 a8 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 6d c9 c8 f7 7f 00 00 e8 71 08 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 f9 b2 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 a8 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 6d c9 c8 f7 7f 00 00 e8 32 08 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 f9 b2 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 a8 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 6d c9 c8 f7 7f 00 00 e8 f3 07 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 f9 b2 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 a8 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 6d c9 c8 f7 7f 00 00 e8 b7 07 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 f8 b2 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 a8 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 6d c9 c8 f7 7f 00 00 e8 7b 07 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac f8 b2 5e 48 b8 60 e7 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 a8 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 08 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f9 b2 5e}
004fh mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c872a8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a8 72 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 08 b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f9 b2 5e}
008eh mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c872a8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a8 72 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 08 b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f9 b2 5e}
00cdh mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c872a8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a8 72 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 07 b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f9 b2 5e}
010ch mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c872a8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a8 72 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 07 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f8 b2 5e}
0148h mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c872a8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a8 72 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 07 b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac f8 b2 5e}
0184h mov rax,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e7 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c872a8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 a8 72 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 6f c9 c8 f7 7f 00 00 e8 40 06 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 f7 b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 a9 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 01 06 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 f7 b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 a9 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 c2 05 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 f6 b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 a9 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 83 05 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 f6 b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 a9 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 6f c9 c8 f7 7f 00 00 e8 47 05 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 f6 b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 a9 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 6f c9 c8 f7 7f 00 00 e8 0b 05 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c f6 b2 5e 48 b8 a0 e7 63 c7 f7 7f 00 00 48 89 46 18 48 b8 50 a9 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 06 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f7 b2 5e}
004fh mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c872a990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a9 72 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 06 b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f7 b2 5e}
008eh mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c872a940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a9 72 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 05 b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f6 b2 5e}
00cdh mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c872a980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a9 72 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 05 b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f6 b2 5e}
010ch mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c872a970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a9 72 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 05 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f6 b2 5e}
0148h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c872a960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a9 72 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 05 b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c f6 b2 5e}
0184h mov rax,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e7 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c872a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 a9 72 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 71 c9 c8 f7 7f 00 00 e8 d0 03 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 f5 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 aa 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 91 03 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 f4 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 a9 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 52 03 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 f4 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 aa 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 13 03 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 f4 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 aa 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 71 c9 c8 f7 7f 00 00 e8 d7 02 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 f4 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 aa 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 71 c9 c8 f7 7f 00 00 e8 9b 02 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc f3 b2 5e 48 b8 e0 e7 63 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 a9 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 03 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f5 b2 5e}
004fh mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c872aa30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 aa 72 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 03 b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f4 b2 5e}
008eh mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c872a9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a9 72 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 03 b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 f4 b2 5e}
00cdh mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c872aa20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 aa 72 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 03 b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 f4 b2 5e}
010ch mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c872aa10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 aa 72 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 02 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 f4 b2 5e}
0148h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c872aa00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 aa 72 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 02 b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f3 b2 5e}
0184h mov rax,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e7 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c872a9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 a9 72 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 73 c9 c8 f7 7f 00 00 e8 60 fd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 ee b2 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 aa 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 73 c9 c8 f7 7f 00 00 e8 21 fd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 ee b2 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 aa 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 73 c9 c8 f7 7f 00 00 e8 e2 fc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 ee b2 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 aa 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 73 c9 c8 f7 7f 00 00 e8 a3 fc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 ed b2 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 aa 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 73 c9 c8 f7 7f 00 00 e8 67 fc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 ed b2 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 aa 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 73 c9 c8 f7 7f 00 00 e8 2b fc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c ed b2 5e 48 b8 20 e8 63 c7 f7 7f 00 00 48 89 46 18 48 b8 90 aa 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c973a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 73 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 fd b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ee b2 5e}
004fh mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c872aad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 aa 72 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c973a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 73 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 fd b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 ee b2 5e}
008eh mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c872aa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 aa 72 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c973a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 73 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fc b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ee b2 5e}
00cdh mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c872aac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 aa 72 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c973a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 73 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 fc b2 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 ed b2 5e}
010ch mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c872aab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 aa 72 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c973a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 73 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 fc b2 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 ed b2 5e}
0148h mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c872aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa 72 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c973a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 73 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b fc b2 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ed b2 5e}
0184h mov rax,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e8 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c872aa90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 aa 72 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 75 c9 c8 f7 7f 00 00 e8 f0 fa b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 ec b2 5e 48 b9 60 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 6b 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 75 c9 c8 f7 7f 00 00 e8 b1 fa b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 eb b2 5e 48 b9 60 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 6b 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 75 c9 c8 f7 7f 00 00 e8 72 fa b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 eb b2 5e 48 b9 60 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 6b 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 75 c9 c8 f7 7f 00 00 e8 33 fa b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 eb b2 5e 48 b9 60 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 6b 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 75 c9 c8 f7 7f 00 00 e8 f7 f9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 eb b2 5e 48 b9 60 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 6b 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 75 c9 c8 f7 7f 00 00 e8 bb f9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec ea b2 5e 48 b8 60 e8 63 c7 f7 7f 00 00 48 89 46 18 48 b8 98 6b 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c975b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 fa b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 ec b2 5e}
004fh mov rcx,7ff7c763e860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e8 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8736bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 6b 73 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c975b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 fa b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 eb b2 5e}
008eh mov rcx,7ff7c763e860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e8 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8736b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 6b 73 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c975b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fa b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 eb b2 5e}
00cdh mov rcx,7ff7c763e860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e8 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8736bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 6b 73 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c975b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fa b2 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 eb b2 5e}
010ch mov rcx,7ff7c763e860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e8 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8736bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6b 73 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c975b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f9 b2 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 eb b2 5e}
0148h mov rcx,7ff7c763e860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e8 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c8736ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6b 73 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c975b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f9 b2 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ea b2 5e}
0184h mov rax,7ff7c763e860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e8 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c8736b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 6b 73 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[250] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 7a c9 c8 f7 7f 00 00 e8 80 f8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 e9 b2 5e 48 b9 a0 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 6c 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 7a c9 c8 f7 7f 00 00 e8 41 f8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 e9 b2 5e 48 b9 a0 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 6c 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 7a c9 c8 f7 7f 00 00 e8 02 f8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 e9 b2 5e 48 b9 a0 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 6c 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 7a c9 c8 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c8c97a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 f8 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 e9 b2 5e}
004fh mov rcx,7ff7c763e8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e8 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8736c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6c 73 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c97a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f8 b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e9 b2 5e}
008eh mov rcx,7ff7c763e8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e8 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8736c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 6c 73 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c97a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f8 b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 e9 b2 5e}
00cdh mov rcx,7ff7c763e8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e8 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8736c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6c 73 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c97a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a c9 c8 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<byte> lookup<byte>(UnaryBitLogicKind:byte kind)
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c0 80 c9 c8 f7 7f 00 00 e8 27 f6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 e7 b2 5e 48 b8 e0 e8 63 c7 f7 7f 00 00 48 89 46 18 48 b8 40 93 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8c980c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 80 c9 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f6 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 e7 b2 5e}
0038h mov rax,7ff7c763e8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e8 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8729340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 93 72 c8 f7 7f 00 00}
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
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f0 83 c9 c8 f7 7f 00 00 e8 d7 f4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 e6 b2 5e 48 b8 10 e9 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 93 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8c983f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 83 c9 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f4 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 e6 b2 5e}
0038h mov rax,7ff7c763e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c87293b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 93 72 c8 f7 7f 00 00}
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
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 86 c9 c8 f7 7f 00 00 e8 87 f3 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 e4 b2 5e 48 b8 40 e9 63 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 9a 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8c98600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 86 c9 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 f3 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 e4 b2 5e}
0038h mov rax,7ff7c763e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8729ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 9a 72 c8 f7 7f 00 00}
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
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 10 88 c9 c8 f7 7f 00 00 e8 37 f2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 e3 b2 5e 48 b8 70 e9 63 c7 f7 7f 00 00 48 89 46 18 48 b8 08 9b 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8c98810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 88 c9 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 f2 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 e3 b2 5e}
0038h mov rax,7ff7c763e970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e9 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8729b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9b 72 c8 f7 7f 00 00}
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
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 20 8a c9 c8 f7 7f 00 00 e8 e7 f0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 e2 b2 5e 48 b8 70 da 63 c7 f7 7f 00 00 48 89 46 18 48 b8 48 9b 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8c98a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 8a c9 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f0 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 e2 b2 5e}
0038h mov rax,7ff7c763da70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 da 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8729b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 9b 72 c8 f7 7f 00 00}
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
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 30 8c c9 c8 f7 7f 00 00 e8 97 ef b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 e0 b2 5e 48 b8 10 da 63 c7 f7 7f 00 00 48 89 46 18 48 b8 78 9b 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8c98c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 8c c9 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 ef b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 e0 b2 5e}
0038h mov rax,7ff7c763da10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 da 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8729b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 9b 72 c8 f7 7f 00 00}
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
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 8e c9 c8 f7 7f 00 00 e8 47 ee b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 df b2 5e 48 b8 a0 e9 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 9b 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8c98e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 8e c9 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 ee b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 df b2 5e}
0038h mov rax,7ff7c763e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e9 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8729bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 9b 72 c8 f7 7f 00 00}
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
; lookup_gUnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 50 90 c9 c8 f7 7f 00 00 e8 f7 ec b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 de b2 5e 48 b8 d0 e9 63 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 9b 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8c99050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 90 c9 c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 ec b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 de b2 5e}
0038h mov rax,7ff7c763e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e9 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8729be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 9b 72 c8 f7 7f 00 00}
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
; lookup_gBinaryBitLogicKind~8u[74] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 62 c9 c8 f7 7f 00 00 e8 92 e7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
002fh mov rcx,7ff7c8c96290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 62 c9 c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e7 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 67 c9 c8 f7 7f 00 00 e8 82 e2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 d3 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 7e 72 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 43 e2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 d3 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 81 72 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 04 e2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 d3 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 81 72 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 c5 e1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 d2 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 7e 72 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 86 e1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 d2 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 81 72 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 47 e1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 d2 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 81 72 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 08 e1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 d2 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 81 72 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 c9 e0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa d1 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 81 72 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 8a e0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb d1 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 81 72 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 4b e0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c d1 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 81 72 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 0c e0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d d1 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 7e 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 cd df b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe d0 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 81 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 8e df b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf d0 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 7e 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 67 c9 c8 f7 7f 00 00 e8 4f df b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 d0 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 81 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 67 c9 c8 f7 7f 00 00 e8 13 df b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 d0 b2 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 7e 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 67 c9 c8 f7 7f 00 00 e8 d7 de b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 d0 b2 5e 48 b8 a0 e6 63 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 81 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 e2 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 d3 b2 5e}
004dh mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8727e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7e 72 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 e2 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 d3 b2 5e}
008ch mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c87281e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 81 72 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 e2 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 d3 b2 5e}
00cbh mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c87281d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 81 72 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 e1 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 d2 b2 5e}
010ah mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8727e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7e 72 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 e1 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 d2 b2 5e}
0149h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8728178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 81 72 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 e1 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 d2 b2 5e}
0188h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8728168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 81 72 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 e1 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 d2 b2 5e}
01c7h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8728188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 81 72 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 e0 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa d1 b2 5e}
0206h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8728158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 81 72 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a e0 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb d1 b2 5e}
0245h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c87281b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 81 72 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e0 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c d1 b2 5e}
0284h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8728198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 81 72 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c e0 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d d1 b2 5e}
02c3h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8727e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 7e 72 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd df b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe d0 b2 5e}
0302h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8728148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 81 72 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e df b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf d0 b2 5e}
0341h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8727e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7e 72 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f df b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 d0 b2 5e}
0380h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c87281a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 81 72 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 df b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 d0 b2 5e}
03bch mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8727e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 7e 72 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8c96740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 c9 c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 de b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 d0 b2 5e}
03f8h mov rax,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e6 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c87281c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 81 72 c8 f7 7f 00 00}
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
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 69 c9 c8 f7 7f 00 00 e8 72 dd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 ce b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 33 dd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 ce b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 f4 dc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 ce b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 b5 dc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 cd b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 76 dc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 cd b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 37 dc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 cd b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 f8 db b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 cd b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 b9 db b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea cc b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 7a db b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab cc b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 3b db b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c cc b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 fc da b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d cc b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 bd da b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee cb b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 7e da b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af cb b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 82 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 69 c9 c8 f7 7f 00 00 e8 3f da b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 cb b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 82 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 69 c9 c8 f7 7f 00 00 e8 03 da b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 cb b2 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 82 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 69 c9 c8 f7 7f 00 00 e8 c7 d9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 ca b2 5e 48 b8 e0 e6 63 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 82 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 dd b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ce b2 5e}
004dh mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8728208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 82 72 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 dd b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ce b2 5e}
008ch mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c87282f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 82 72 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 dc b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 ce b2 5e}
00cbh mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c87282e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 82 72 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 dc b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 cd b2 5e}
010ah mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8728218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 82 72 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 dc b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 cd b2 5e}
0149h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8728288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 82 72 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 dc b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 cd b2 5e}
0188h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8728278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 72 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 db b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 cd b2 5e}
01c7h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8728298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 82 72 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 db b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea cc b2 5e}
0206h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8728268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 82 72 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a db b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab cc b2 5e}
0245h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c87282c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 82 72 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b db b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c cc b2 5e}
0284h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c87282a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 72 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc da b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d cc b2 5e}
02c3h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8728238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 82 72 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd da b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee cb b2 5e}
0302h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8728258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 82 72 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e da b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af cb b2 5e}
0341h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8728248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 82 72 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f da b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 cb b2 5e}
0380h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c87282b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 82 72 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 da b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 cb b2 5e}
03bch mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8728228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 82 72 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8c96950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 69 c9 c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 d9 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 ca b2 5e}
03f8h mov rax,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e6 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c87282d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 82 72 c8 f7 7f 00 00}
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
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 6b c9 c8 f7 7f 00 00 e8 62 d8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 c9 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 23 d8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 c9 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 84 72 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 e4 d7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 c9 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 84 72 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 a5 d7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 c8 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 66 d7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 c8 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 27 d7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 c8 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 e8 d6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 c8 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 a9 d6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da c7 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 6a d6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b c7 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 2b d6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c c7 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 ec d5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d c7 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 ad d5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de c6 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 6e d5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f c6 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 83 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 6b c9 c8 f7 7f 00 00 e8 2f d5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 c6 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 83 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 6b c9 c8 f7 7f 00 00 e8 f3 d4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 c6 b2 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 83 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 6b c9 c8 f7 7f 00 00 e8 b7 d4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 c5 b2 5e 48 b8 20 e7 63 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 83 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 d8 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c9 b2 5e}
004dh mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8728328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 83 72 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 d8 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c9 b2 5e}
008ch mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8728418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 84 72 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 d7 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c9 b2 5e}
00cbh mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8728408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 84 72 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 d7 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 c8 b2 5e}
010ah mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8728338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 83 72 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 d7 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 c8 b2 5e}
0149h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c87283a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 83 72 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 d7 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 c8 b2 5e}
0188h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8728398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 83 72 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 d6 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 c8 b2 5e}
01c7h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c87283b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 83 72 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 d6 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c7 b2 5e}
0206h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8728388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 83 72 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a d6 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c7 b2 5e}
0245h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c87283e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 83 72 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b d6 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c7 b2 5e}
0284h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c87283c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 83 72 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec d5 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c7 b2 5e}
02c3h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8728358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 83 72 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad d5 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de c6 b2 5e}
0302h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8728378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 83 72 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e d5 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c6 b2 5e}
0341h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8728368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 83 72 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f d5 b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 c6 b2 5e}
0380h mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c87283d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 83 72 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 d4 b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 c6 b2 5e}
03bch mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8728348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 83 72 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 d4 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 c5 b2 5e}
03f8h mov rax,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e7 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c87283f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 83 72 c8 f7 7f 00 00}
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
; lookup_gBinaryBitLogicKind~8u[264] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 6d c9 c8 f7 7f 00 00 e8 52 d3 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 c4 b2 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 84 72 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 6d c9 c8 f7 7f 00 00 e8 13 d3 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 c4 b2 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 85 72 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 6d c9 c8 f7 7f 00 00 e8 d4 d2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 c4 b2 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 85 72 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 6d c9 c8 f7 7f 00 00 e8 95 d2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 c3}
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
002fh mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 d3 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 c4 b2 5e}
004dh mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8728438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 84 72 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 d3 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 c4 b2 5e}
008ch mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8728528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 85 72 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 d2 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 c4 b2 5e}
00cbh mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8728518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 72 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8c96d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6d c9 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 d2 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 c6 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 6f c9 c8 f7 7f 00 00 e8 42 ce b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 bf b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 8f 72 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 03 ce b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 bf b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 c4 cd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 be b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 85 cd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 be b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 8f 72 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 46 cd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 be b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 07 cd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 be b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 c8 cc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 bd b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 89 cc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba bd b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 4a cc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b bd b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 0b cc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c bd b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 cc cb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd bc b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 8d cb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be bc b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 4e cb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f bc b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 6f c9 c8 f7 7f 00 00 e8 0f cb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 bc b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 90 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 6f c9 c8 f7 7f 00 00 e8 d3 ca b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 bc b2 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 90 72 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 6f c9 c8 f7 7f 00 00 e8 97 ca b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 bb b2 5e 48 b8 a0 e7 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 90 72 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 ce b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 bf b2 5e}
004dh mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8728fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8f 72 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ce b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 bf b2 5e}
008ch mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c87290d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 90 72 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 cd b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 be b2 5e}
00cbh mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c87290c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 90 72 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 cd b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 be b2 5e}
010ah mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8728ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 72 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 cd b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 be b2 5e}
0149h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8729060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 90 72 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 cd b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 be b2 5e}
0188h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8729050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 90 72 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 cc b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 bd b2 5e}
01c7h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8729070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 90 72 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 cc b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba bd b2 5e}
0206h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8729040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 90 72 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a cc b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b bd b2 5e}
0245h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c87290a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 90 72 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b cc b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c bd b2 5e}
0284h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8729080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 72 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc cb b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd bc b2 5e}
02c3h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8729010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 90 72 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d cb b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be bc b2 5e}
0302h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8729030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 72 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e cb b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f bc b2 5e}
0341h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8729020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 90 72 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f cb b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 bc b2 5e}
0380h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8729090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 90 72 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 ca b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 bc b2 5e}
03bch mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8729000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 90 72 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8c96f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6f c9 c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 ca b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 bb b2 5e}
03f8h mov rax,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e7 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c87290b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 90 72 c8 f7 7f 00 00}
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
; lookup_gBinaryBitLogicKind~8u[938] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 71 c9 c8 f7 7f 00 00 e8 32 c9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 ba b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 90 72 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 f3 c8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 ba b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 b4 c8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 b9 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 75 c8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 b9 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 36 c8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 b9 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 f7 c7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 b9 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 b8 c7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 b8 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 79 c7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa b8 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 3a c7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b b8 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 fb c6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c b8 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 bc c6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed b7 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 7d c6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae b7 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 3e c6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f b7 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 91 72 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 71 c9 c8 f7 7f 00 00 e8 ff c5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 b7 b2 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 91 72 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 71 c9 c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 c9 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 ba b2 5e}
004dh mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c87290f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 90 72 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 c8 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ba b2 5e}
008ch mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c87291e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 91 72 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c8 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 b9 b2 5e}
00cbh mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c87291d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 91 72 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c8 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 b9 b2 5e}
010ah mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8729100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 91 72 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 c8 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 b9 b2 5e}
0149h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8729170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 91 72 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 c7 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 b9 b2 5e}
0188h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8729160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 91 72 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 c7 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 b8 b2 5e}
01c7h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8729180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 91 72 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 c7 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa b8 b2 5e}
0206h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8729150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 91 72 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c7 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b b8 b2 5e}
0245h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c87291b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 91 72 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb c6 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c b8 b2 5e}
0284h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8729190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 91 72 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc c6 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed b7 b2 5e}
02c3h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8729120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 91 72 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d c6 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae b7 b2 5e}
0302h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8729140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 91 72 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e c6 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f b7 b2 5e}
0341h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8729130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 91 72 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff c5 b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 b7 b2 5e}
0380h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c87291a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 91 72 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8c97190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 c9 c8 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[123] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 73 c9 c8 f7 7f 00 00 e8 22 c4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 b5 b2 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 92 72 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 73 c9 c8 f7 7f 00 00 e8 e3 c3}
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
002fh mov rcx,7ff7c8c973a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 73 c9 c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 c4 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 b5 b2 5e}
004dh mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8729210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 92 72 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8c973a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 73 c9 c8 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 e3 c3}
