------------------------------------------------------------------------------------------------------------------------
; Shifter<byte> lookup<byte>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 e0 8a 87 c7 f7 7f 00 00 e8 9b 2b b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 1c b4 5e 48 b8 80 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 2d 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0036h mov rcx,7ff7c7878ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8a 87 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 2b b4 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 1c b4 5e}
0054h mov rax,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e3 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7362dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 2d 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<sbyte> lookup<sbyte>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d0 8e 87 c7 f7 7f 00 00 e8 9b 29 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 1a b4 5e 48 b8 c0 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 30 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0036h mov rcx,7ff7c7878ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 8e 87 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 29 b4 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 1a b4 5e}
0054h mov rax,7ff7c624e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73630b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 30 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<ushort> lookup<ushort>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 c0 92 87 c7 f7 7f 00 00 e8 9b 27 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 18 b4 5e 48 b8 00 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 2e 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0036h mov rcx,7ff7c78792c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 92 87 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 27 b4 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 18 b4 5e}
0054h mov rax,7ff7c624e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7362ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 2e 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<short> lookup<short>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d0 94 87 c7 f7 7f 00 00 e8 9b 21 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 12 b4 5e 48 b8 40 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 78 31 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0036h mov rcx,7ff7c78794d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 94 87 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 21 b4 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 12 b4 5e}
0054h mov rax,7ff7c624e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7363178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 31 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<uint> lookup<uint>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 c0 98 87 c7 f7 7f 00 00 e8 9b 1f b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 10 b4 5e 48 b8 80 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 20 2f 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0036h mov rcx,7ff7c78798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 87 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 1f b4 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 10 b4 5e}
0054h mov rax,7ff7c624e480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e4 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7362f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 2f 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<int> lookup<int>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d0 9a 87 c7 f7 7f 00 00 e8 9b 1d b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 0e b4 5e 48 b8 c0 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 78 47 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0036h mov rcx,7ff7c7879ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 9a 87 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 1d b4 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 0e b4 5e}
0054h mov rax,7ff7c624e4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e4 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7364778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 47 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<ulong> lookup<ulong>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 c0 9e 87 c7 f7 7f 00 00 e8 9b 1b b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 0c b4 5e 48 b8 00 e5 24 c6 f7 7f 00 00 48 89 46 18 48 b8 80 2f 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0036h mov rcx,7ff7c7879ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 9e 87 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 1b b4 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 0c b4 5e}
0054h mov rax,7ff7c624e500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e5 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7362f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 2f 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<long> lookup<long>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 d0 a0 87 c7 f7 7f 00 00 e8 9b 19 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 0a b4 5e 48 b8 40 e5 24 c6 f7 7f 00 00 48 89 46 18 48 b8 38 48 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
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
0036h mov rcx,7ff7c787a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a0 87 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 19 b4 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 0a b4 5e}
0054h mov rax,7ff7c624e540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e5 24 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7364838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 48 36 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 a6 87 c7 f7 7f 00 00 e8 a1 17 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 08 b4 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 98 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 a6 87 c7 f7 7f 00 00 e8 62 17 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 08 b4 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 97 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 a6 87 c7 f7 7f 00 00 e8 23 17 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 08 b4 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 98 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 a6 87 c7 f7 7f 00 00 e8 e4 16 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 08 b4 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 97 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 a6 87 c7 f7 7f 00 00 e8 a8 16 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 07 b4 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 97 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 a6 87 c7 f7 7f 00 00 e8 6c 16 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 07 b4 5e 48 b8 80 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 97 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787a670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a6 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 17 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 08 b4 5e}
004eh mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7359820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 98 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787a670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a6 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 17 b4 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 08 b4 5e}
008dh mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7359780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 97 35 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787a670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a6 87 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 17 b4 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 08 b4 5e}
00cch mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7359800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 98 35 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c787a670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a6 87 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 16 b4 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 08 b4 5e}
010bh mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73597e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 97 35 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c787a670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a6 87 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 16 b4 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 07 b4 5e}
0147h mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c73597c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 97 35 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c787a670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a6 87 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 16 b4 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 07 b4 5e}
0183h mov rax,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e3 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c73597a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 97 35 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; lookup_g8u[186] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 ab 87 c7 f7 7f 00 00 e8 41 15 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 06 b4 5e 48 b9 80 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 99 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 ab 87 c7 f7 7f 00 00 e8 02 15 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 06 b4 5e 48 b9 80 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 99 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 ab 87 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787ab20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ab 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 15 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 06 b4 5e}
004eh mov rcx,7ff7c624e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e5 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73599b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 99 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787ab20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ab 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 15 b4 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 06 b4 5e}
008dh mov rcx,7ff7c624e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e5 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7359960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 99 35 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787ab20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ab 87 c7 f7 7f 00 00}
00b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ushort> lookup<ushort>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 ad 87 c7 f7 7f 00 00 e8 e1 12 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 04 b4 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 a2 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 ad 87 c7 f7 7f 00 00 e8 a2 12 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 03 b4 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 9a 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 ad 87 c7 f7 7f 00 00 e8 63 12 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 03 b4 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a2 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 ad 87 c7 f7 7f 00 00 e8 24 12 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 03 b4 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 a2 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 ad 87 c7 f7 7f 00 00 e8 e8 11 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 03 b4 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a2 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 ad 87 c7 f7 7f 00 00 e8 ac 11 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 02 b4 5e 48 b8 c0 e5 24 c6 f7 7f 00 00 48 89 46 18 48 b8 10 9a 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787ad30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ad 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 12 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 04 b4 5e}
004eh mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c735a2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a2 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787ad30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ad 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 12 b4 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 03 b4 5e}
008dh mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7359a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 9a 35 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787ad30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ad 87 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 12 b4 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 03 b4 5e}
00cch mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c735a2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a2 35 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c787ad30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ad 87 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 12 b4 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 03 b4 5e}
010bh mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c735a2a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a2 35 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c787ad30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ad 87 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 11 b4 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 03 b4 5e}
0147h mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c735a290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a2 35 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c787ad30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ad 87 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 11 b4 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 02 b4 5e}
0183h mov rax,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e5 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7359a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 9a 35 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 af 87 c7 f7 7f 00 00 e8 81 10 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 01 b4 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 a3 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 af 87 c7 f7 7f 00 00 e8 42 10 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 01 b4 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 a3 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 af 87 c7 f7 7f 00 00 e8 03 10 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 01 b4 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 a3 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 af 87 c7 f7 7f 00 00 e8 c4 0f b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 00 b4 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a3 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 af 87 c7 f7 7f 00 00 e8 88 0f b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b9 00 b4 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 a3 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 af 87 c7 f7 7f 00 00 e8 4c 0f b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 00 b4 5e 48 b8 00 e6 24 c6 f7 7f 00 00 48 89 46 18 48 b8 20 a3 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787af40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 af 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 10 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 01 b4 5e}
004eh mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c735a360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a3 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787af40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 af 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 10 b4 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 01 b4 5e}
008dh mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c735a310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a3 35 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787af40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 af 87 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 10 b4 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 01 b4 5e}
00cch mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c735a350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a3 35 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c787af40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 af 87 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 0f b4 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 00 b4 5e}
010bh mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c735a340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a3 35 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c787af40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 af 87 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 0f b4 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 00 b4 5e}
0147h mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c735a330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a3 35 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c787af40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 af 87 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 0f b4 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 00 b4 5e}
0183h mov rax,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e6 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c735a320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 a3 35 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 b1 87 c7 f7 7f 00 00 e8 21 0e b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 ff b3 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a4 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 b1 87 c7 f7 7f 00 00 e8 e2 0d b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 ff b3 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a3 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 b1 87 c7 f7 7f 00 00 e8 a3 0d b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 fe b3 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 a3 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 b1 87 c7 f7 7f 00 00 e8 64 0d b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 fe b3 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a3 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 b1 87 c7 f7 7f 00 00 e8 28 0d b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 fe b3 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 a3 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 b1 87 c7 f7 7f 00 00 e8 ec 0c b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d fe b3 5e 48 b8 40 e6 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 a3 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787b150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b1 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 0e b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 ff b3 5e}
004eh mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c735a400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a4 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787b150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b1 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 0d b4 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ff b3 5e}
008dh mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c735a3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a3 35 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787b150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b1 87 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 0d b4 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 fe b3 5e}
00cch mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c735a3f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a3 35 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c787b150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b1 87 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 0d b4 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 fe b3 5e}
010bh mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c735a3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a3 35 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c787b150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b1 87 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 0d b4 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 fe b3 5e}
0147h mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c735a3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a3 35 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c787b150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b1 87 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 0c b4 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d fe b3 5e}
0183h mov rax,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c735a3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 a3 35 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 b3 87 c7 f7 7f 00 00 e8 c1 0b b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 fc b3 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 a4 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 b3 87 c7 f7 7f 00 00 e8 82 0b b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 fc b3 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 a4 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 b3 87 c7 f7 7f 00 00 e8 43 0b b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 fc b3 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a4 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 b3 87 c7 f7 7f 00 00 e8 04 0b b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 fc b3 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 a4 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 b3 87 c7 f7 7f 00 00 e8 c8 0a b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 fb b3 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 a4 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 b3 87 c7 f7 7f 00 00 e8 8c 0a b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bd fb b3 5e 48 b8 80 e6 24 c6 f7 7f 00 00 48 89 46 18 48 b8 60 a4 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787b360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b3 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 0b b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fc b3 5e}
004eh mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c735a4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a4 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787b360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b3 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 0b b4 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 fc b3 5e}
008dh mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c735a450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a4 35 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787b360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b3 87 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 0b b4 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fc b3 5e}
00cch mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c735a490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a4 35 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c787b360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b3 87 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 0b b4 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 fc b3 5e}
010bh mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c735a480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a4 35 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c787b360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b3 87 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 0a b4 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 fb b3 5e}
0147h mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c735a470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a4 35 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c787b360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b3 87 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 0a b4 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd fb b3 5e}
0183h mov rax,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e6 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c735a460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 a4 35 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 b5 87 c7 f7 7f 00 00 e8 61 09 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 fa b3 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a5 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 b5 87 c7 f7 7f 00 00 e8 22 09 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 fa b3 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 a4 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 b5 87 c7 f7 7f 00 00 e8 e3 08 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 fa b3 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 a5 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 b5 87 c7 f7 7f 00 00 e8 a4 08 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 f9 b3 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 a5 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 b5 87 c7 f7 7f 00 00 e8 68 08 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 f9 b3 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 a5 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 b5 87 c7 f7 7f 00 00 e8 2c 08 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d f9 b3 5e 48 b8 c0 e6 24 c6 f7 7f 00 00 48 89 46 18 48 b8 00 a5 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787b570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b5 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 09 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fa b3 5e}
004eh mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c735a540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a5 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787b570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b5 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 09 b4 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 fa b3 5e}
008dh mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c735a4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a4 35 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787b570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b5 87 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 08 b4 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 fa b3 5e}
00cch mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c735a530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a5 35 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c787b570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b5 87 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 08 b4 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f9 b3 5e}
010bh mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c735a520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a5 35 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c787b570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b5 87 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 08 b4 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f9 b3 5e}
0147h mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c735a510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a5 35 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c787b570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b5 87 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 08 b4 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f9 b3 5e}
0183h mov rax,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e6 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c735a500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 a5 35 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 b7 87 c7 f7 7f 00 00 e8 f1 02 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 f4 b3 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a5 35 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 b7 87 c7 f7 7f 00 00 e8 b2 02 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 f3 b3 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a5 35 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 b7 87 c7 f7 7f 00 00 e8 73 02 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 f3 b3 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 a5 35 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 b7 87 c7 f7 7f 00 00 e8 34 02 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 f3 b3 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 a5 35 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 b7 87 c7 f7 7f 00 00 e8 f8 01 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 f3 b3 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a5 35 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 b7 87 c7 f7 7f 00 00 e8 bc 01 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed f2 b3 5e 48 b8 00 e7 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 a5 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787b780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b7 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 02 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f4 b3 5e}
004eh mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c735a5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a5 35 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787b780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b7 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 02 b4 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 f3 b3 5e}
008dh mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c735a590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a5 35 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787b780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b7 87 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 02 b4 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 f3 b3 5e}
00cch mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c735a5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a5 35 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c787b780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b7 87 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 02 b4 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 f3 b3 5e}
010bh mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c735a5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a5 35 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c787b780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b7 87 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 01 b4 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f3 b3 5e}
0147h mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c735a5b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a5 35 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c787b780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b7 87 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 01 b4 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f2 b3 5e}
0183h mov rax,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c735a5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 a5 35 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<float> lookup<float>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 b9 87 c7 f7 7f 00 00 e8 91 00 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 f1 b3 5e 48 b9 40 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 66 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 b9 87 c7 f7 7f 00 00 e8 52 00 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 f1 b3 5e 48 b9 40 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 65 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 b9 87 c7 f7 7f 00 00 e8 13 00 b4 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 f1 b3 5e 48 b9 40 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 66 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 b9 87 c7 f7 7f 00 00 e8 d4 ff b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 f1 b3 5e 48 b9 40 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 66 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 b9 87 c7 f7 7f 00 00 e8 98 ff b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 f0 b3 5e 48 b9 40 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 65 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 b9 87 c7 f7 7f 00 00 e8 5c ff b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d f0 b3 5e 48 b8 40 e7 24 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 65 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787b990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b9 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 00 b4 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f1 b3 5e}
004eh mov rcx,7ff7c624e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7366620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 66 36 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787b990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b9 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 00 b4 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 f1 b3 5e}
008dh mov rcx,7ff7c624e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73665d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 36 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787b990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b9 87 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 00 b4 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 f1 b3 5e}
00cch mov rcx,7ff7c624e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7366610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 66 36 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c787b990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b9 87 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 ff b3 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 f1 b3 5e}
010bh mov rcx,7ff7c624e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7366600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 66 36 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c787b990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b9 87 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 ff b3 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f0 b3 5e}
0147h mov rcx,7ff7c624e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c73665f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 65 36 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c787b990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b9 87 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ff b3 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f0 b3 5e}
0183h mov rax,7ff7c624e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e7 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c73665e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 65 36 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<double> lookup<double>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 be 87 c7 f7 7f 00 00 e8 31 fe b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 ef b3 5e 48 b9 80 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 66 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 be 87 c7 f7 7f 00 00 e8 f2 fd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 ef b3 5e 48 b9 80 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 66 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 be 87 c7 f7 7f 00 00 e8 b3 fd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 ee b3 5e 48 b9 80 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 66 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 be 87 c7 f7 7f 00 00 e8 74 fd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 ee b3 5e 48 b9 80 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 66 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 be 87 c7 f7 7f 00 00 e8 38 fd b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 ee b3 5e 48 b9 80 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 66 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 be 87 c7 f7 7f 00 00 e8 fc fc b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d ee b3 5e 48 b8 80 e7 24 c6 f7 7f 00 00 48 89 46 18 48 b8 88 66 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c787be40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 be 87 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 fe b3 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ef b3 5e}
004eh mov rcx,7ff7c624e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73666c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 66 36 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c787be40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 be 87 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fd b3 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 ef b3 5e}
008dh mov rcx,7ff7c624e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7366678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 66 36 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c787be40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 be 87 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 fd b3 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ee b3 5e}
00cch mov rcx,7ff7c624e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73666b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 66 36 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c787be40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 be 87 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fd b3 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ee b3 5e}
010bh mov rcx,7ff7c624e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73666a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 66 36 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c787be40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 be 87 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 fd b3 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ee b3 5e}
0147h mov rcx,7ff7c624e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7366698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 66 36 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c787be40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 be 87 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc fc b3 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d ee b3 5e}
0183h mov rax,7ff7c624e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e7 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7366688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 66 36 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<byte> lookup<byte>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 a0 c4 87 c7 f7 7f 00 00 e8 e8 fb b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 ed b3 5e 48 b8 c0 e7 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 8e 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c787c4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c4 87 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 fb b3 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ed b3 5e}
0037h mov rax,7ff7c624e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e7 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7358eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 8e 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<sbyte> lookup<sbyte>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 d0 c7 87 c7 f7 7f 00 00 e8 a8 fa b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 eb b3 5e 48 b8 f0 e7 24 c6 f7 7f 00 00 48 89 46 18 48 b8 20 8f 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c787c7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c7 87 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 fa b3 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 eb b3 5e}
0037h mov rax,7ff7c624e7f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e7 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7358f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 8f 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ushort> lookup<ushort>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 e0 c9 87 c7 f7 7f 00 00 e8 68 f9 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 ea b3 5e 48 b8 20 e8 24 c6 f7 7f 00 00 48 89 46 18 48 b8 20 96 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c787c9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c9 87 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f9 b3 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 ea b3 5e}
0037h mov rax,7ff7c624e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e8 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 96 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<short> lookup<short>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 f0 cb 87 c7 f7 7f 00 00 e8 28 f8 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 e9 b3 5e 48 b8 50 e8 24 c6 f7 7f 00 00 48 89 46 18 48 b8 50 96 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c787cbf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 cb 87 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f8 b3 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 e9 b3 5e}
0037h mov rax,7ff7c624e850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e8 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 96 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<uint> lookup<uint>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 00 ce 87 c7 f7 7f 00 00 e8 e8 f6 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 e8 b3 5e 48 b8 80 e8 24 c6 f7 7f 00 00 48 89 46 18 48 b8 90 96 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c787ce00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ce 87 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f6 b3 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 e8 b3 5e}
0037h mov rax,7ff7c624e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 96 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<int> lookup<int>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 10 d0 87 c7 f7 7f 00 00 e8 a8 f5 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 e6 b3 5e 48 b8 70 da 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 96 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c787d010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d0 87 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 f5 b3 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 e6 b3 5e}
0037h mov rax,7ff7c624da70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 da 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73596c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 96 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ulong> lookup<ulong>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 20 d2 87 c7 f7 7f 00 00 e8 68 f4 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 e5 b3 5e 48 b8 b0 e8 24 c6 f7 7f 00 00 48 89 46 18 48 b8 00 97 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c787d220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d2 87 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f4 b3 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e5 b3 5e}
0037h mov rax,7ff7c624e8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 e8 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 97 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<long> lookup<long>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 30 d4 87 c7 f7 7f 00 00 e8 28 f3 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 e4 b3 5e 48 b8 e0 e8 24 c6 f7 7f 00 00 48 89 46 18 48 b8 30 97 35 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000dh je short 005eh                          ; JE rel8 || 74 cb || encoded[2]{74 4f}
000fh cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0013h jne near ptr 00a3h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8a 00 00 00}
0019h mov rcx,7ff7c787d430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d4 87 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f3 b3 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 e4 b3 5e}
0037h mov rax,7ff7c624e8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e8 24 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7359730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 97 35 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
; lookup_g8u[58] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 a6 87 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c787a670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a6 87 c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(BinaryBitLogicKind:byte kind)
; lookup_g8u[58] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 ab 87 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c787ab20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ab 87 c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
; lookup_g8u[58] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 30 ad 87 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c787ad30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ad 87 c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(BinaryBitLogicKind:byte kind)
; lookup_g8u[58] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 af 87 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c787af40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 af 87 c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(BinaryBitLogicKind:byte kind)
; lookup_g8u[58] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 b1 87 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c787b150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b1 87 c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(BinaryBitLogicKind:byte kind)
; lookup_g8u[58] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 b3 87 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c787b360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b3 87 c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
; lookup_g8u[58] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 b5 87 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c787b570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b5 87 c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(BinaryBitLogicKind:byte kind)
; lookup_g8u[58] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 b7 87 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c787b780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b7 87 c7 f7 7f 00 00}
0038h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
