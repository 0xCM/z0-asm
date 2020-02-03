------------------------------------------------------------------------------------------------------------------------
; Shifter<byte> lookup<byte>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 40 2e 85 c7 f7 7f 00 00 e8 eb 2c b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 1e b6 5e 48 b8 40 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 80 2c 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7852e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 2e 85 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 2c b6 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 1e b6 5e}
0054h mov rax,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7342c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 2c 34 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<sbyte> lookup<sbyte>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 30 32 85 c7 f7 7f 00 00 e8 eb 2a b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 1c b6 5e 48 b8 80 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 68 2f 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7853230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 32 85 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 2a b6 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 1c b6 5e}
0054h mov rax,7ff7c623e480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e4 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7342f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 2f 34 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<ushort> lookup<ushort>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 20 36 85 c7 f7 7f 00 00 e8 eb 28 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 1a b6 5e 48 b8 c0 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 70 2d 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7853620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 36 85 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 28 b6 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 1a b6 5e}
0054h mov rax,7ff7c623e4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e4 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7342d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 2d 34 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<short> lookup<short>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 30 38 85 c7 f7 7f 00 00 e8 eb 22 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 14 b6 5e 48 b8 00 e5 23 c6 f7 7f 00 00 48 89 46 18 48 b8 28 30 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7853830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 38 85 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 22 b6 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 14 b6 5e}
0054h mov rax,7ff7c623e500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e5 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7343028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 30 34 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<uint> lookup<uint>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 20 3c 85 c7 f7 7f 00 00 e8 eb 20 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 12 b6 5e 48 b8 40 e5 23 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 2d 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7853c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 3c 85 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 20 b6 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 12 b6 5e}
0054h mov rax,7ff7c623e540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e5 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7342dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 2d 34 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<int> lookup<int>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 30 3e 85 c7 f7 7f 00 00 e8 eb 1e b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 10 b6 5e 48 b8 80 e5 23 c6 f7 7f 00 00 48 89 46 18 48 b8 28 46 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7853e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 3e 85 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 1e b6 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 10 b6 5e}
0054h mov rax,7ff7c623e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e5 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7344628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 46 34 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<ulong> lookup<ulong>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 20 42 85 c7 f7 7f 00 00 e8 eb 1c b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 0e b6 5e 48 b8 c0 e5 23 c6 f7 7f 00 00 48 89 46 18 48 b8 30 2e 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7854220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 42 85 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 1c b6 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 0e b6 5e}
0054h mov rax,7ff7c623e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e5 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7342e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 2e 34 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<long> lookup<long>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 30 44 85 c7 f7 7f 00 00 e8 eb 1a b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 0c b6 5e 48 b8 00 e6 23 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 46 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7854430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 44 85 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 1a b6 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 0c b6 5e}
0054h mov rax,7ff7c623e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e6 23 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73446e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 46 34 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 49 85 c7 f7 7f 00 00 e8 f1 18 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 0a b6 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 96 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 b2 18 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 09 b6 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 96 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 73 18 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 09 b6 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 96 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 34 18 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 09 b6 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 96 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 49 85 c7 f7 7f 00 00 e8 f8 17 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 09 b6 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 96 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 49 85 c7 f7 7f 00 00 e8 bc 17 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 08 b6 5e 48 b8 40 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 50 96 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 18 b6 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 0a b6 5e}
004eh mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73396d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 96 33 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 18 b6 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 09 b6 5e}
008dh mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7339630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 96 33 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 18 b6 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 09 b6 5e}
00cch mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73396b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 96 33 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 18 b6 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 09 b6 5e}
010bh mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7339690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 96 33 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 17 b6 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 09 b6 5e}
0147h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7339670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 96 33 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 17 b6 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 08 b6 5e}
0183h mov rax,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7339650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 96 33 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 4e 85 c7 f7 7f 00 00 e8 91 16 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 07 b6 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 98 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 52 16 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 07 b6 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 98 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 13 16 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 07 b6 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 98 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 d4 15 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 07 b6 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 98 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 4e 85 c7 f7 7f 00 00 e8 98 15 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 06 b6 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 98 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 4e 85 c7 f7 7f 00 00 e8 5c 15 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 06 b6 5e 48 b8 40 e6 23 c6 f7 7f 00 00 48 89 46 18 48 b8 20 98 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 16 b6 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 07 b6 5e}
004eh mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7339860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 33 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 16 b6 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 07 b6 5e}
008dh mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7339810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 98 33 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 16 b6 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 07 b6 5e}
00cch mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7339850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 98 33 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 15 b6 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 07 b6 5e}
010bh mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7339840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 98 33 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 15 b6 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 06 b6 5e}
0147h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7339830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 98 33 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 15 b6 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 06 b6 5e}
0183h mov rax,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7339820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 98 33 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ushort> lookup<ushort>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 50 85 c7 f7 7f 00 00 e8 31 14 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 05 b6 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 a1 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 f2 13 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 05 b6 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 98 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 b3 13 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 04 b6 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 a1 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 74 13 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 04 b6 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 a1 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 50 85 c7 f7 7f 00 00 e8 38 13 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 04 b6 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a1 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 50 85 c7 f7 7f 00 00 e8 fc 12 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 04 b6 5e 48 b8 80 e6 23 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 98 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 14 b6 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 05 b6 5e}
004eh mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c733a170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a1 33 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 13 b6 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 05 b6 5e}
008dh mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73398b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 98 33 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 13 b6 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 04 b6 5e}
00cch mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c733a160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a1 33 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 13 b6 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 04 b6 5e}
010bh mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c733a150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a1 33 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 13 b6 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 04 b6 5e}
0147h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c733a140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a1 33 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 12 b6 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 04 b6 5e}
0183h mov rax,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e6 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c73398c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 98 33 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(ComparisonKind:byte kind)
; lookup_g8u[138] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 52 85 c7 f7 7f 00 00 e8 d1 11 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 03 b6 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 a2 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 92 11 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0030h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 11 b6 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 03 b6 5e}
004eh mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c733a210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a2 33 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 11 b6 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 54 85 c7 f7 7f 00 00 e8 71 0f b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 00 b6 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a2 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 32 0f b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 00 b6 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 a2 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 f3 0e b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 00 b6 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 a2 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 b4 0e b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ff b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a2 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 54 85 c7 f7 7f 00 00 e8 78 0e b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 ff b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 a2 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 54 85 c7 f7 7f 00 00 e8 3c 0e b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d ff b5 5e 48 b8 00 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 70 a2 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 0f b6 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 00 b6 5e}
004eh mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c733a2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a2 33 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 0f b6 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 00 b6 5e}
008dh mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c733a260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a2 33 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 0e b6 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 00 b6 5e}
00cch mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c733a2a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a2 33 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 0e b6 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ff b5 5e}
010bh mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c733a290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a2 33 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 0e b6 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 ff b5 5e}
0147h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c733a280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a2 33 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 0e b6 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d ff b5 5e}
0183h mov rax,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c733a270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 a2 33 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 56 85 c7 f7 7f 00 00 e8 11 0d b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 fe b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 a3 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 d2 0c b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 fe b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a3 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 93 0c b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 fd b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a3 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 54 0c b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 fd b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 a3 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 56 85 c7 f7 7f 00 00 e8 18 0c b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 fd b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 a3 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 56 85 c7 f7 7f 00 00 e8 dc 0b b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d fd b5 5e 48 b8 40 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 10 a3 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 0d b6 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fe b5 5e}
004eh mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c733a350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a3 33 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 0c b6 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 fe b5 5e}
008dh mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c733a300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a3 33 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 0c b6 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 fd b5 5e}
00cch mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c733a340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a3 33 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 0c b6 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 fd b5 5e}
010bh mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c733a330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a3 33 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 0c b6 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 fd b5 5e}
0147h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c733a320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a3 33 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 0b b6 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d fd b5 5e}
0183h mov rax,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e7 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c733a310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 a3 33 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 58 85 c7 f7 7f 00 00 e8 b1 0a b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 fb b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 a3 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 72 0a b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 fb b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 a3 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 33 0a b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 fb b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a3 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 f4 09 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 fb b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 a3 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 58 85 c7 f7 7f 00 00 e8 b8 09 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 fa b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 a3 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 58 85 c7 f7 7f 00 00 e8 7c 09 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad fa b5 5e 48 b8 80 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 a3 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 0a b6 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb b5 5e}
004eh mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c733a3f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a3 33 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 0a b6 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 fb b5 5e}
008dh mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c733a3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a3 33 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 0a b6 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 fb b5 5e}
00cch mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c733a3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a3 33 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 09 b6 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 fb b5 5e}
010bh mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c733a3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a3 33 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 09 b6 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 fa b5 5e}
0147h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c733a3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a3 33 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 09 b6 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad fa b5 5e}
0183h mov rax,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e7 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c733a3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 a3 33 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(ComparisonKind:byte kind)
; lookup_g8u[186] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 41 04 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 f5 b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a4 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 02 04 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 f5 b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a4 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 c3}
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
0030h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 04 b6 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 f5 b5 5e}
004eh mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c733a490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a4 33 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 04 b6 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f5 b5 5e}
008dh mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c733a440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a4 33 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
00b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<float> lookup<float>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 5c 85 c7 f7 7f 00 00 e8 e1 01 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 f3 b5 5e 48 b9 00 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 64 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 5c 85 c7 f7 7f 00 00 e8 a2 01 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 f2 b5 5e 48 b9 00 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 64 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 5c 85 c7 f7 7f 00 00 e8 63 01 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 f2 b5 5e 48 b9 00 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 64 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 5c 85 c7 f7 7f 00 00 e8 24 01 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 f2 b5 5e 48 b9 00 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 64 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 5c 85 c7 f7 7f 00 00 e8 e8 00 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 f2 b5 5e 48 b9 00 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 64 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 5c 85 c7 f7 7f 00 00 e8 ac 00 b6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd f1 b5 5e 48 b8 00 e8 23 c6 f7 7f 00 00 48 89 46 18 48 b8 90 64 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7855cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5c 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 01 b6 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f3 b5 5e}
004eh mov rcx,7ff7c623e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73464d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 64 34 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7855cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5c 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 01 b6 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 f2 b5 5e}
008dh mov rcx,7ff7c623e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7346480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 64 34 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7855cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5c 85 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 01 b6 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 f2 b5 5e}
00cch mov rcx,7ff7c623e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73464c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 64 34 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7855cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5c 85 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 01 b6 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 f2 b5 5e}
010bh mov rcx,7ff7c623e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73464b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 64 34 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7855cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5c 85 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 00 b6 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f2 b5 5e}
0147h mov rcx,7ff7c623e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c73464a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 64 34 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7855cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5c 85 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 00 b6 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f1 b5 5e}
0183h mov rax,7ff7c623e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e8 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7346490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 64 34 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<double> lookup<double>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 61 85 c7 f7 7f 00 00 e8 81 ff b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 f0 b5 5e 48 b9 40 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 65 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 61 85 c7 f7 7f 00 00 e8 42 ff b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 f0 b5 5e 48 b9 40 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 65 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 61 85 c7 f7 7f 00 00 e8 03 ff b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 f0 b5 5e 48 b9 40 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 65 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 61 85 c7 f7 7f 00 00 e8 c4 fe b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 ef b5 5e 48 b9 40 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 65 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 61 85 c7 f7 7f 00 00 e8 88 fe b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b9 ef b5 5e 48 b9 40 e8 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 65 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 61 85 c7 f7 7f 00 00 e8 4c fe b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d ef b5 5e 48 b8 40 e8 23 c6 f7 7f 00 00 48 89 46 18 48 b8 38 65 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78561a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 61 85 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 ff b5 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 f0 b5 5e}
004eh mov rcx,7ff7c623e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7346578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 65 34 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78561a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 61 85 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 ff b5 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 f0 b5 5e}
008dh mov rcx,7ff7c623e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7346528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 65 34 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c78561a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 61 85 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ff b5 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 f0 b5 5e}
00cch mov rcx,7ff7c623e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7346568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 65 34 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c78561a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 61 85 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 fe b5 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ef b5 5e}
010bh mov rcx,7ff7c623e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7346558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 65 34 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c78561a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 61 85 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 fe b5 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 ef b5 5e}
0147h mov rcx,7ff7c623e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7346548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 65 34 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c78561a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 61 85 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c fe b5 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ef b5 5e}
0183h mov rax,7ff7c623e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7346538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 65 34 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<byte> lookup<byte>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 00 68 85 c7 f7 7f 00 00 e8 38 fd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 ee b5 5e 48 b8 80 e8 23 c6 f7 7f 00 00 48 89 46 18 48 b8 60 8d 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7856800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 68 85 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 fd b5 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ee b5 5e}
0037h mov rax,7ff7c623e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7338d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 8d 33 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<sbyte> lookup<sbyte>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 30 6b 85 c7 f7 7f 00 00 e8 f8 fb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 ed b5 5e 48 b8 b0 e8 23 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 8d 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7856b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 6b 85 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 fb b5 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ed b5 5e}
0037h mov rax,7ff7c623e8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 e8 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7338dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 8d 33 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ushort> lookup<ushort>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 40 6d 85 c7 f7 7f 00 00 e8 b8 fa b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 eb b5 5e 48 b8 e0 e8 23 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 94 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7856d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6d 85 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fa b5 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 eb b5 5e}
0037h mov rax,7ff7c623e8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e8 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73394d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 94 33 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<short> lookup<short>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 50 6f 85 c7 f7 7f 00 00 e8 78 f9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 ea b5 5e 48 b8 10 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 00 95 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7856f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6f 85 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f9 b5 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 ea b5 5e}
0037h mov rax,7ff7c623e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7339500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 95 33 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<uint> lookup<uint>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 60 71 85 c7 f7 7f 00 00 e8 38 f8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 e9 b5 5e 48 b8 40 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 40 95 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7857160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 71 85 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 f8 b5 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e9 b5 5e}
0037h mov rax,7ff7c623e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7339540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 95 33 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<int> lookup<int>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 70 73 85 c7 f7 7f 00 00 e8 f8 f6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 e8 b5 5e 48 b8 00 db 23 c6 f7 7f 00 00 48 89 46 18 48 b8 70 95 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7857370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 73 85 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f6 b5 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 e8 b5 5e}
0037h mov rax,7ff7c623db00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 db 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7339570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 95 33 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ulong> lookup<ulong>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 80 75 85 c7 f7 7f 00 00 e8 b8 f5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 e6 b5 5e 48 b8 70 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 95 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7857580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 75 85 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f5 b5 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 e6 b5 5e}
0037h mov rax,7ff7c623e970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e9 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73395b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 95 33 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<long> lookup<long>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 90 77 85 c7 f7 7f 00 00 e8 78 f4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 e5 b5 5e 48 b8 a0 e9 23 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 95 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7857790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 77 85 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f4 b5 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 e5 b5 5e}
0037h mov rax,7ff7c623e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e9 23 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73395e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 95 33 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 49 85 c7 f7 7f 00 00 e8 13 ef b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 e0 b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 76 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 d4 ee b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 e0 b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 78 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 95 ee b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 df b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 78 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 56 ee b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 df b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 76 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 17 ee b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 df b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 77 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 d8 ed b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 df b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 77 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 99 ed b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca de b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 77 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 5a ed b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b de b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 77 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 1b ed b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c de b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 77 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 dc ec b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d de b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 77 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 9d ec b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce dd b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 76 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 5e ec b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f dd b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 76 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 1f ec b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 dd b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 76 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 49 85 c7 f7 7f 00 00 e8 e0 eb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 dd b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 77 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 49 85 c7 f7 7f 00 00 e8 a4 eb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 dc b5 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 76 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 49 85 c7 f7 7f 00 00 e8 68 eb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 dc b5 5e 48 b8 40 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 77 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ef b5 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 e0 b5 5e}
004ch mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7337648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 76 33 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 ee b5 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 e0 b5 5e}
008bh mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7337828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 78 33 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 ee b5 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 df b5 5e}
00cah mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7337808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 78 33 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 ee b5 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 df b5 5e}
0109h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7337668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 76 33 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 ee b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 df b5 5e}
0148h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7337748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 77 33 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 ed b5 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 df b5 5e}
0187h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7337728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 77 33 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 ed b5 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca de b5 5e}
01c6h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7337768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 77 33 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ed b5 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b de b5 5e}
0205h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7337708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 77 33 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b ed b5 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c de b5 5e}
0244h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c73377c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 77 33 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc ec b5 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d de b5 5e}
0283h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7337788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 77 33 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d ec b5 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce dd b5 5e}
02c2h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73376a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 76 33 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e ec b5 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f dd b5 5e}
0301h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73376e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 76 33 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ec b5 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 dd b5 5e}
0340h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73376c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 76 33 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 eb b5 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 dd b5 5e}
037fh mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73377a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 77 33 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 eb b5 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 dc b5 5e}
03bbh mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7337688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 33 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c78549d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 49 85 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 eb b5 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 dc b5 5e}
03f7h mov rax,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c73377e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 77 33 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 4e 85 c7 f7 7f 00 00 e8 13 ea b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 db b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 79 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 d4 e9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 db b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 95 e9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 da b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 7c 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 56 e9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 da b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 79 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 17 e9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 da b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 7c 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 d8 e8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 da b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 7c 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 99 e8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca d9 b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 7c 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 5a e8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b d9 b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 79 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 1b e8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c d9 b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 7c 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 dc e7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d d9 b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 7c 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 9d e7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce d8 b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 79 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 5e e7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f d8 b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 79 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 1f e7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 d8 b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 79 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 4e 85 c7 f7 7f 00 00 e8 e0 e6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 d8 b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 7c 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 4e 85 c7 f7 7f 00 00 e8 a4 e6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 d7 b5 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 79 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 4e 85 c7 f7 7f 00 00 e8 68 e6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 d7 b5 5e 48 b8 40 e6 23 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 7c 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ea b5 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 db b5 5e}
004ch mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7337968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 79 33 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e9 b5 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 db b5 5e}
008bh mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7337d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7d 33 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e9 b5 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 da b5 5e}
00cah mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7337cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 7c 33 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 e9 b5 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 da b5 5e}
0109h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7337978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 79 33 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e9 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 da b5 5e}
0148h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7337c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c 33 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e8 b5 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 da b5 5e}
0187h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7337c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7c 33 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e8 b5 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca d9 b5 5e}
01c6h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7337ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7c 33 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a e8 b5 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b d9 b5 5e}
0205h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73379c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 79 33 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b e8 b5 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d9 b5 5e}
0244h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7337cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7c 33 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e7 b5 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d d9 b5 5e}
0283h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7337cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7c 33 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d e7 b5 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce d8 b5 5e}
02c2h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7337998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 79 33 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e7 b5 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f d8 b5 5e}
0301h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73379b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 79 33 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e7 b5 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 d8 b5 5e}
0340h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73379a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 33 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 e6 b5 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d8 b5 5e}
037fh mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7337cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 7c 33 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 e6 b5 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 d7 b5 5e}
03bbh mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7337988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 33 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7854e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e 85 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 e6 b5 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 d7 b5 5e}
03f7h mov rax,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7337ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 7c 33 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 50 85 c7 f7 7f 00 00 e8 13 e5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 d6 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 d4 e4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 d6 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 95 e4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 d5 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 56 e4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 d5 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 17 e4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 d5 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 d8 e3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 d5 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 99 e3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca d4 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 5a e3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b d4 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 1b e3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c d4 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 dc e2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d d4 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 9d e2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce d3 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 5e e2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f d3 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 1f e2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 d3 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 7d 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 50 85 c7 f7 7f 00 00 e8 e0 e1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 d3 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 7d 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 50 85 c7 f7 7f 00 00 e8 a4 e1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 d2 b5 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 7d 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 50 85 c7 f7 7f 00 00 e8 68 e1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 d2 b5 5e 48 b8 80 e6 23 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 7d 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e5 b5 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 d6 b5 5e}
004ch mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7337d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 7d 33 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e4 b5 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 d6 b5 5e}
008bh mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7337e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7e 33 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e4 b5 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 d5 b5 5e}
00cah mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7337e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7e 33 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 e4 b5 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 d5 b5 5e}
0109h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7337d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 7d 33 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e4 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 d5 b5 5e}
0148h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7337da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7d 33 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e3 b5 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d5 b5 5e}
0187h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7337d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 33 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e3 b5 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca d4 b5 5e}
01c6h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7337db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7d 33 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a e3 b5 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b d4 b5 5e}
0205h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7337d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7d 33 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b e3 b5 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d4 b5 5e}
0244h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7337de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7d 33 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e2 b5 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d d4 b5 5e}
0283h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7337dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 7d 33 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d e2 b5 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce d3 b5 5e}
02c2h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7337d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d 33 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e2 b5 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f d3 b5 5e}
0301h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7337d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7d 33 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e2 b5 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 d3 b5 5e}
0340h mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7337d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7d 33 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 e1 b5 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d3 b5 5e}
037fh mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7337dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7d 33 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 e1 b5 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 d2 b5 5e}
03bbh mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7337d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7d 33 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7855090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 85 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 e1 b5 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 d2 b5 5e}
03f7h mov rax,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e6 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7337df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 7d 33 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 52 85 c7 f7 7f 00 00 e8 13 e0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 d1 b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 d4 df b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 d1 b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 95 df b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 d0 b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 56 df b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 d0 b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 17 df b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 d0 b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 d8 de b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 d0 b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 99 de b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca cf b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 5a de b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b cf b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 1b de b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c cf b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 dc dd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d cf b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 9d dd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce ce b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 5e dd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f ce b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 1f dd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 ce b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 7e 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 52 85 c7 f7 7f 00 00 e8 e0 dc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 ce b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 7e 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 52 85 c7 f7 7f 00 00 e8 a4 dc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 cd b5 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 7e 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 52 85 c7 f7 7f 00 00 e8 68 dc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 cd b5 5e 48 b8 c0 e6 23 c6 f7 7f 00 00 48 89 46 18 48 b8 10 7f 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e0 b5 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 d1 b5 5e}
004ch mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7337e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7e 33 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 df b5 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 d1 b5 5e}
008bh mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7337f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 7f 33 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 df b5 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 d0 b5 5e}
00cah mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7337f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 7f 33 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 df b5 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 d0 b5 5e}
0109h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7337e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7e 33 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 df b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 d0 b5 5e}
0148h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7337ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 7e 33 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 de b5 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d0 b5 5e}
0187h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7337eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7e 33 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 de b5 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca cf b5 5e}
01c6h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7337ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7e 33 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a de b5 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b cf b5 5e}
0205h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7337ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7e 33 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b de b5 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c cf b5 5e}
0244h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7337f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7f 33 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc dd b5 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d cf b5 5e}
0283h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7337ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7e 33 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d dd b5 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce ce b5 5e}
02c2h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7337e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7e 33 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e dd b5 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f ce b5 5e}
0301h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7337e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7e 33 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f dd b5 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 ce b5 5e}
0340h mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7337e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7e 33 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 dc b5 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 ce b5 5e}
037fh mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7337ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 7e 33 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 dc b5 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 cd b5 5e}
03bbh mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7337e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7e 33 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c78552a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 52 85 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 dc b5 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 cd b5 5e}
03f7h mov rax,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e6 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7337f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 7f 33 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 54 85 c7 f7 7f 00 00 e8 13 db b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 cc b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 d4 da b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 cc b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 80 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 95 da b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 cb b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 80 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 56 da b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 cb b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 17 da b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 cb b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 d8 d9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 cb b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 99 d9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca ca b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 5a d9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b ca b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 1b d9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c ca b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 80 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 dc d8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d ca b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 9d d8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce c9 b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 5e d8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f c9 b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 1f d8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 c9 b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 7f 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 54 85 c7 f7 7f 00 00 e8 e0 d7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 c9 b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 80 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 54 85 c7 f7 7f 00 00 e8 a4 d7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 c8 b5 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 7f 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 54 85 c7 f7 7f 00 00 e8 68 d7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 c8 b5 5e 48 b8 00 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 20 80 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 db b5 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 cc b5 5e}
004ch mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7337f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7f 33 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 da b5 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 cc b5 5e}
008bh mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7338040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 80 33 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 da b5 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 cb b5 5e}
00cah mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7338030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 80 33 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 da b5 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 cb b5 5e}
0109h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7337f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7f 33 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 da b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 cb b5 5e}
0148h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7337fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7f 33 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 d9 b5 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 cb b5 5e}
0187h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7337fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 7f 33 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 d9 b5 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca ca b5 5e}
01c6h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7337fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7f 33 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a d9 b5 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ca b5 5e}
0205h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7337fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7f 33 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b d9 b5 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c ca b5 5e}
0244h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7338010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 80 33 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc d8 b5 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ca b5 5e}
0283h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7337ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 7f 33 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d d8 b5 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce c9 b5 5e}
02c2h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7337f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7f 33 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e d8 b5 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c9 b5 5e}
0301h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7337fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7f 33 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f d8 b5 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 c9 b5 5e}
0340h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7337f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7f 33 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 d7 b5 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 c9 b5 5e}
037fh mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7338000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 80 33 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 d7 b5 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 c8 b5 5e}
03bbh mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7337f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7f 33 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c78554b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 85 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 d7 b5 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 c8 b5 5e}
03f7h mov rax,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7338020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 80 33 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(BinaryBitLogicKind:byte kind)
; lookup_g8u[953] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 56 85 c7 f7 7f 00 00 e8 13 d6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 c7 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 80 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 d4 d5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 c7 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 95 d5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 c6 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 56 d5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 c6 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 17 d5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 c6 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 d8 d4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 c6 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 99 d4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca c5 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 5a d4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b c5 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 1b d4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c c5 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 dc d3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d c5 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 9d d3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce c4 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 5e d3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f c4 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 1f d3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 c4 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 8a 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 56 85 c7 f7 7f 00 00 e8 e0 d2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 c4 b5 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 8a 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 56 85 c7 f7 7f 00 00 e8 a4 d2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 c3}
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
002eh mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 d6 b5 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 c7 b5 5e}
004ch mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7338070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 80 33 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 d5 b5 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 c7 b5 5e}
008bh mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7338af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8a 33 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 d5 b5 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c6 b5 5e}
00cah mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7338ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8a 33 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 d5 b5 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 c6 b5 5e}
0109h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7338a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8a 33 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 d5 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 c6 b5 5e}
0148h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7338a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 8a 33 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 d4 b5 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 c6 b5 5e}
0187h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7338a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8a 33 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 d4 b5 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca c5 b5 5e}
01c6h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7338a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8a 33 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a d4 b5 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b c5 b5 5e}
0205h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7338a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8a 33 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b d4 b5 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c c5 b5 5e}
0244h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7338ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8a 33 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc d3 b5 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d c5 b5 5e}
0283h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7338aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8a 33 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d d3 b5 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce c4 b5 5e}
02c2h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7338a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 8a 33 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e d3 b5 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c4 b5 5e}
0301h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7338a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 8a 33 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f d3 b5 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 c4 b5 5e}
0340h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7338a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 8a 33 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 d2 b5 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 c4 b5 5e}
037fh mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7338ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8a 33 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c78556c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 56 85 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 d2 b5 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 d5 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 58 85 c7 f7 7f 00 00 e8 13 d1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 c2 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 d4 d0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 c2 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 95 d0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 c1 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 56 d0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 c1 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 17 d0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 c1 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 d8 cf b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 c1 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 99 cf b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca c0 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 5a cf b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b c0 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 1b cf b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c c0 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 dc ce b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d c0 b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 9d ce b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce bf b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 5e ce b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f bf b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 1f ce b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 bf b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 8b 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 58 85 c7 f7 7f 00 00 e8 e0 cd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 bf b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 8b 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 58 85 c7 f7 7f 00 00 e8 a4 cd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 be b5 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 8b 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 58 85 c7 f7 7f 00 00 e8 68 cd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 be b5 5e 48 b8 80 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 8b 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 d1 b5 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 c2 b5 5e}
004ch mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7338b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8b 33 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 d0 b5 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 c2 b5 5e}
008bh mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7338c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8c 33 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 d0 b5 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c1 b5 5e}
00cah mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7338bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8b 33 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 d0 b5 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 c1 b5 5e}
0109h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7338b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 8b 33 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 d0 b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 c1 b5 5e}
0148h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7338b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8b 33 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 cf b5 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 c1 b5 5e}
0187h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7338b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 8b 33 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 cf b5 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca c0 b5 5e}
01c6h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7338ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8b 33 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a cf b5 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b c0 b5 5e}
0205h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7338b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8b 33 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b cf b5 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c c0 b5 5e}
0244h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7338bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 8b 33 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc ce b5 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d c0 b5 5e}
0283h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7338bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8b 33 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d ce b5 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce bf b5 5e}
02c2h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7338b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 8b 33 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e ce b5 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f bf b5 5e}
0301h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7338b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 33 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ce b5 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 bf b5 5e}
0340h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7338b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 8b 33 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 cd b5 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 bf b5 5e}
037fh mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7338bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8b 33 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 cd b5 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 be b5 5e}
03bbh mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7338b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 8b 33 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c78558d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 58 85 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 cd b5 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 be b5 5e}
03f7h mov rax,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e7 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7338be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 8b 33 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 13 cc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 bd b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 d4 cb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 bd b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 8d 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 95 cb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 bc b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 8d 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 56 cb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 bc b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 17 cb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 bc b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 d8 ca b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 bc b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 99 ca b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca bb b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 5a ca b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b bb b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 1b ca b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c bb b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 dc c9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d bb b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 9d c9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce ba b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 5e c9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f ba b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 1f c9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 ba b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 8c 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 e0 c8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 ba b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 8c 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 a4 c8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 b9 b5 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 8c 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 5a 85 c7 f7 7f 00 00 e8 68 c8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 b9 b5 5e 48 b8 c0 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 00 8d 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 cc b5 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 bd b5 5e}
004ch mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7338c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 8c 33 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 cb b5 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bd b5 5e}
008bh mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7338d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 8d 33 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 cb b5 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 bc b5 5e}
00cah mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7338d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8d 33 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 cb b5 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 bc b5 5e}
0109h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7338c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 8c 33 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 cb b5 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 bc b5 5e}
0148h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7338cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8c 33 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 ca b5 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 bc b5 5e}
0187h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7338ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8c 33 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 ca b5 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca bb b5 5e}
01c6h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7338cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 33 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ca b5 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b bb b5 5e}
0205h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7338c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8c 33 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b ca b5 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c bb b5 5e}
0244h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7338cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8c 33 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c9 b5 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d bb b5 5e}
0283h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7338cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 8c 33 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c9 b5 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce ba b5 5e}
02c2h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7338c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c 33 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e c9 b5 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f ba b5 5e}
0301h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7338c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 8c 33 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f c9 b5 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 ba b5 5e}
0340h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7338c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8c 33 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 c8 b5 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 ba b5 5e}
037fh mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7338ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8c 33 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 c8 b5 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 b9 b5 5e}
03bbh mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7338c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 8c 33 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7855ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5a 85 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 c8 b5 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 b9 b5 5e}
03f7h mov rax,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e7 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7338d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 8d 33 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
