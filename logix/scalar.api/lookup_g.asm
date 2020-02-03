------------------------------------------------------------------------------------------------------------------------
; Shifter<byte> lookup<byte>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 a0 f7 86 c7 f7 7f 00 00 e8 cb 39 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 2a b2 5e 48 b8 40 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 1f 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c786f7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f7 86 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 39 b2 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 2a b2 5e}
0054h mov rax,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7381fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1f 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<sbyte> lookup<sbyte>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 90 fb 86 c7 f7 7f 00 00 e8 cb 37 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 28 b2 5e 48 b8 80 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 88 22 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c786fb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fb 86 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 37 b2 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 28 b2 5e}
0054h mov rax,7ff7c627e480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e4 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7382288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 22 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<ushort> lookup<ushort>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 48 00 88 c7 f7 7f 00 00 e8 cb 35 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 26 b2 5e 48 b8 c0 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 90 20 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7880048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 88 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 35 b2 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 26 b2 5e}
0054h mov rax,7ff7c627e4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e4 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7382090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 20 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<short> lookup<short>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 58 02 88 c7 f7 7f 00 00 e8 cb 2f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 20 b2 5e 48 b8 00 e5 27 c6 f7 7f 00 00 48 89 46 18 48 b8 48 23 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7880258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 88 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 2f b2 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 20 b2 5e}
0054h mov rax,7ff7c627e500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e5 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7382348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 23 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<uint> lookup<uint>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 48 06 88 c7 f7 7f 00 00 e8 cb 2d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 1e b2 5e 48 b8 40 e5 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 20 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7880648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 06 88 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 2d b2 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 1e b2 5e}
0054h mov rax,7ff7c627e540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e5 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c73820f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 20 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<int> lookup<int>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 58 08 88 c7 f7 7f 00 00 e8 cb 2b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 1c b2 5e 48 b8 80 e5 27 c6 f7 7f 00 00 48 89 46 18 48 b8 48 39 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7880858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 08 88 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 2b b2 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 1c b2 5e}
0054h mov rax,7ff7c627e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e5 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7383948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 39 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<ulong> lookup<ulong>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 48 0c 88 c7 f7 7f 00 00 e8 cb 29 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 1a b2 5e 48 b8 c0 e5 27 c6 f7 7f 00 00 48 89 46 18 48 b8 50 21 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7880c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0c 88 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 29 b2 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 1a b2 5e}
0054h mov rax,7ff7c627e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e5 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7382150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 21 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<long> lookup<long>(ShiftOpKind:byte kind)
; lookup_g8u[123] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b3 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 14 01 00 00 48 b9 58 0e 88 c7 f7 7f 00 00 e8 cb 27 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 18 b2 5e 48 b8 00 e6 27 c6 f7 7f 00 00 48 89 46 18 48 b8 08 3a 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0036h mov rcx,7ff7c7880e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0e 88 c7 f7 7f 00 00}
0040h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 27 b2 5e}
0045h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0048h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 18 b2 5e}
0054h mov rax,7ff7c627e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e6 27 c6 f7 7f 00 00}
005eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0062h mov rax,7ff7c7383a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 3a 38 c7 f7 7f 00 00}
006ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0070h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_g8u[138] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 13 88 c7 f7 7f 00 00 e8 d1 25 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 17 b2 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 89 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 92 25 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0030h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 25 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 17 b2 5e}
004eh mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73789f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 89 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 25 b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 18 88 c7 f7 7f 00 00 e8 71 23 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 14 b2 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 8b 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 32 23 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 14 b2 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 8b 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 f3 22 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 14 b2 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 8b 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 b4 22 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 13 b2 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 8b 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 18 88 c7 f7 7f 00 00 e8 78 22 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 13 b2 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 8b 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 18 88 c7 f7 7f 00 00 e8 3c 22 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 13 b2 5e 48 b8 40 e6 27 c6 f7 7f 00 00 48 89 46 18 48 b8 40 8b 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 23 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 14 b2 5e}
004eh mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7378b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 8b 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 23 b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 14 b2 5e}
008dh mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7378b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 8b 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 22 b2 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 14 b2 5e}
00cch mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7378b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8b 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 22 b2 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 13 b2 5e}
010bh mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7378b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8b 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 22 b2 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 13 b2 5e}
0147h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7378b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 8b 37 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 22 b2 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 13 b2 5e}
0183h mov rax,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7378b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 8b 37 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ushort> lookup<ushort>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 11 21 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 12 b2 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 94 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 d2 20 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 12 b2 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 8b 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 93 20 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 11 b2 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 94 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 54 20 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 11 b2 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 94 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 18 20 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 11 b2 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 94 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 dc 1f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 11 b2 5e 48 b8 80 e6 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 8b 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 21 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 12 b2 5e}
004eh mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7379490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 94 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 20 b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 12 b2 5e}
008dh mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7378bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 8b 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 20 b2 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 11 b2 5e}
00cch mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7379480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 94 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 20 b2 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 11 b2 5e}
010bh mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7379470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 94 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 20 b2 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 11 b2 5e}
0147h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7379460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 94 37 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 1f b2 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 11 b2 5e}
0183h mov rax,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e6 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7378be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 8b 37 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 b1 1e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 0f b2 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 95 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 72 1e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 0f b2 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 94 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 33 1e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 0f b2 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 95 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 f4 1d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 0f b2 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 95 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 b8 1d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 0e b2 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 95 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 7c 1d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 0e b2 5e 48 b8 c0 e6 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 94 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 1e b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 0f b2 5e}
004eh mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7379530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 95 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 1e b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 0f b2 5e}
008dh mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73794e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 94 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 1e b2 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 0f b2 5e}
00cch mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7379520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 95 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 1d b2 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 0f b2 5e}
010bh mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7379510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 95 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 1d b2 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 0e b2 5e}
0147h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7379500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 95 37 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 1d b2 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 0e b2 5e}
0183h mov rax,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e6 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c73794f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 94 37 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 51 1c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 0d b2 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 95 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 12 1c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 0d b2 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 95 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 d3 1b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 0d b2 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 95 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 94 1b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 0c b2 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 95 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 58 1b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 0c b2 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 95 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 1c 1b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4d 0c b2 5e 48 b8 00 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 90 95 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 1c b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 0d b2 5e}
004eh mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73795d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 95 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 1c b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 0d b2 5e}
008dh mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7379580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 95 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 1b b2 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 0d b2 5e}
00cch mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73795c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 95 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 1b b2 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 0c b2 5e}
010bh mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73795b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 95 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 1b b2 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 0c b2 5e}
0147h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c73795a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 95 37 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 1b b2 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 0c b2 5e}
0183h mov rax,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7379590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 95 37 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 20 88 c7 f7 7f 00 00 e8 f1 19 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 0b b2 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 96 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 b2 19 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 0a b2 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 96 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 73 19 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 0a b2 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 96 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 34 19 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 0a b2 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 96 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 20 88 c7 f7 7f 00 00 e8 f8 18 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 0a b2 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 96 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 20 88 c7 f7 7f 00 00 e8 bc 18 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 09 b2 5e 48 b8 40 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 30 96 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 19 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 0b b2 5e}
004eh mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7379670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 96 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 19 b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 0a b2 5e}
008dh mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7379620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 19 b2 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 0a b2 5e}
00cch mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7379660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 96 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 19 b2 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 0a b2 5e}
010bh mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7379650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 18 b2 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 0a b2 5e}
0147h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7379640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 96 37 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 18 b2 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 09 b2 5e}
0183h mov rax,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e7 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7379630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 96 37 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 22 88 c7 f7 7f 00 00 e8 91 17 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 08 b2 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 97 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 52 17 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 08 b2 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 96 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 13 17 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 08 b2 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 97 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 d4 16 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 08 b2 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 96 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 22 88 c7 f7 7f 00 00 e8 98 16 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 07 b2 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 96 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 22 88 c7 f7 7f 00 00 e8 5c 16 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 07 b2 5e 48 b8 80 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 96 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 17 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 08 b2 5e}
004eh mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7379710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 97 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 17 b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 08 b2 5e}
008dh mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73796c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 96 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 17 b2 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 08 b2 5e}
00cch mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7379700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 97 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 16 b2 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 08 b2 5e}
010bh mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73796f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 96 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 16 b2 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 07 b2 5e}
0147h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c73796e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 96 37 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 16 b2 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 07 b2 5e}
0183h mov rax,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e7 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c73796d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 96 37 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 25 88 c7 f7 7f 00 00 e8 21 11 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 02 b2 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 97 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 e2 10 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 02 b2 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 97 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 a3 10 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 01 b2 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 97 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 64 10 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 01 b2 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 97 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 25 88 c7 f7 7f 00 00 e8 28 10 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 01 b2 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 97 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 25 88 c7 f7 7f 00 00 e8 ec 0f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 01 b2 5e 48 b8 c0 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 70 97 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 11 b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 02 b2 5e}
004eh mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73797b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 97 37 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 10 b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 02 b2 5e}
008dh mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7379760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 97 37 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 10 b2 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 01 b2 5e}
00cch mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73797a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 97 37 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 10 b2 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 01 b2 5e}
010bh mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7379790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 97 37 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 10 b2 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 01 b2 5e}
0147h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7379780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 97 37 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 0f b2 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 01 b2 5e}
0183h mov rax,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e7 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7379770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 97 37 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<float> lookup<float>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 27 88 c7 f7 7f 00 00 e8 c1 0e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 ff b1 5e 48 b9 00 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 57 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 27 88 c7 f7 7f 00 00 e8 82 0e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 ff b1 5e 48 b9 00 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 57 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 27 88 c7 f7 7f 00 00 e8 43 0e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 ff b1 5e 48 b9 00 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 57 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 27 88 c7 f7 7f 00 00 e8 04 0e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 ff b1 5e 48 b9 00 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 57 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 27 88 c7 f7 7f 00 00 e8 c8 0d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 fe b1 5e 48 b9 00 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 57 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 27 88 c7 f7 7f 00 00 e8 8c 0d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bd fe b1 5e 48 b8 00 e8 27 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 57 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7882718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 27 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 0e b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ff b1 5e}
004eh mov rcx,7ff7c627e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c73857f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 57 38 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7882718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 27 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 0e b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ff b1 5e}
008dh mov rcx,7ff7c627e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c73857a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 57 38 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7882718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 27 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 0e b2 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ff b1 5e}
00cch mov rcx,7ff7c627e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c73857e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 57 38 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7882718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 27 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 0e b2 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 ff b1 5e}
010bh mov rcx,7ff7c627e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c73857d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 57 38 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7882718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 27 88 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 0d b2 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 fe b1 5e}
0147h mov rcx,7ff7c627e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c73857c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 57 38 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7882718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 27 88 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 0d b2 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd fe b1 5e}
0183h mov rax,7ff7c627e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e8 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c73857b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 57 38 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<double> lookup<double>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 2b 88 c7 f7 7f 00 00 e8 61 0c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 fd b1 5e 48 b9 40 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 58 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 2b 88 c7 f7 7f 00 00 e8 22 0c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 fd b1 5e 48 b9 40 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 58 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 2b 88 c7 f7 7f 00 00 e8 e3 0b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 fd b1 5e 48 b9 40 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 58 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 2b 88 c7 f7 7f 00 00 e8 a4 0b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 fc b1 5e 48 b9 40 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 58 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 2b 88 c7 f7 7f 00 00 e8 68 0b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 fc b1 5e 48 b9 40 e8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 58 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 2b 88 c7 f7 7f 00 00 e8 2c 0b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d fc b1 5e 48 b8 40 e8 27 c6 f7 7f 00 00 48 89 46 18 48 b8 58 58 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7882bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2b 88 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 0c b2 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fd b1 5e}
004eh mov rcx,7ff7c627e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c7385898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 58 38 c7 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7882bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2b 88 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 0c b2 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 fd b1 5e}
008dh mov rcx,7ff7c627e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c7385848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 58 38 c7 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7882bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2b 88 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 0b b2 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 fd b1 5e}
00cch mov rcx,7ff7c627e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c7385888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 58 38 c7 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7882bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2b 88 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 0b b2 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 fc b1 5e}
010bh mov rcx,7ff7c627e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c7385878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 58 38 c7 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7882bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2b 88 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 0b b2 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fc b1 5e}
0147h mov rcx,7ff7c627e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7385868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 58 38 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7882bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2b 88 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 0b b2 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d fc b1 5e}
0183h mov rax,7ff7c627e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e8 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c7385858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 58 38 c7 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<byte> lookup<byte>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 28 32 88 c7 f7 7f 00 00 e8 18 0a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 fb b1 5e 48 b8 80 e8 27 c6 f7 7f 00 00 48 89 46 18 48 b8 80 80 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7883228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 32 88 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 0a b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 fb b1 5e}
0037h mov rax,7ff7c627e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7378080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 80 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<sbyte> lookup<sbyte>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 58 35 88 c7 f7 7f 00 00 e8 d8 08 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 fa b1 5e 48 b8 b0 e8 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 80 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7883558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 35 88 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 08 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 fa b1 5e}
0037h mov rax,7ff7c627e8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 e8 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73780f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 80 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ushort> lookup<ushort>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 68 37 88 c7 f7 7f 00 00 e8 98 07 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 f8 b1 5e 48 b8 e0 e8 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 87 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7883768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 37 88 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 07 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f8 b1 5e}
0037h mov rax,7ff7c627e8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e8 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73787f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 87 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<short> lookup<short>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 78 39 88 c7 f7 7f 00 00 e8 58 06 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 f7 b1 5e 48 b8 10 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 20 88 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7883978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 39 88 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 06 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f7 b1 5e}
0037h mov rax,7ff7c627e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e9 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7378820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 88 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<uint> lookup<uint>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 88 3b 88 c7 f7 7f 00 00 e8 18 05 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 f6 b1 5e 48 b8 40 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 60 88 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7883b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 3b 88 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 05 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f6 b1 5e}
0037h mov rax,7ff7c627e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7378860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 88 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<int> lookup<int>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 98 3d 88 c7 f7 7f 00 00 e8 d8 03 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 f5 b1 5e 48 b8 30 db 27 c6 f7 7f 00 00 48 89 46 18 48 b8 90 88 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7883d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 3d 88 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 03 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f5 b1 5e}
0037h mov rax,7ff7c627db30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 db 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7378890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 88 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ulong> lookup<ulong>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 a8 3f 88 c7 f7 7f 00 00 e8 98 02 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 f3 b1 5e 48 b8 70 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 88 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c7883fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3f 88 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 02 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f3 b1 5e}
0037h mov rax,7ff7c627e970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e9 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c73788d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 88 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<long> lookup<long>(UnaryBitLogicKind:byte kind)
; lookup_g8u[94] = {57 56 53 48 83 ec 20 8b f1 40 80 fe 01 74 4f 40 80 fe 02 0f 85 8a 00 00 00 48 b9 b8 41 88 c7 f7 7f 00 00 e8 58 01 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 f2 b1 5e 48 b8 a0 e9 27 c6 f7 7f 00 00 48 89 46 18 48 b8 00 89 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0019h mov rcx,7ff7c78841b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 41 88 c7 f7 7f 00 00}
0023h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 01 b2 5e}
0028h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
002fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0032h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f2 b1 5e}
0037h mov rax,7ff7c627e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e9 27 c6 f7 7f 00 00}
0041h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0045h mov rax,7ff7c7378900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 89 37 c7 f7 7f 00 00}
004fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0053h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f8 13 88 c7 f7 7f 00 00 e8 f3 fb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 ed b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 69 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 b4 fb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ec b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 6b 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 75 fb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 ec b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 6b 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 36 fb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 ec b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 69 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 f7 fa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ec b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 6a 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 b8 fa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 eb b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 6a 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 79 fa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa eb b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 6a 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 3a fa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b eb b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 6a 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 fb f9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c eb b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 6a 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 bc f9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed ea b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 6a 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 7d f9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae ea b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 69 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 3e f9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f ea b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 6a 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 ff f8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 ea b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 69 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 13 88 c7 f7 7f 00 00 e8 c0 f8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 e9 b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 6a 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 13 88 c7 f7 7f 00 00 e8 84 f8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 e9 b1 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 69 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 13 88 c7 f7 7f 00 00 e8 48 f8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 e9 b1 5e 48 b8 40 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 08 6b 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fb b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ed b1 5e}
004ch mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7376968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 69 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 fb b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ec b1 5e}
008bh mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7376b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6b 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 fb b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ec b1 5e}
00cah mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7376b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6b 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fb b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ec b1 5e}
0109h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7376988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 69 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fa b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ec b1 5e}
0148h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7376a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6a 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fa b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 eb b1 5e}
0187h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7376a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6a 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fa b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa eb b1 5e}
01c6h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7376a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 6a 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fa b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b eb b1 5e}
0205h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7376a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6a 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f9 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c eb b1 5e}
0244h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7376ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 6a 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc f9 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ea b1 5e}
0283h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7376aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6a 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f9 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ea b1 5e}
02c2h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73769c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 69 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f9 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ea b1 5e}
0301h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7376a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 6a 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f8 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 ea b1 5e}
0340h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73769e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 69 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f8 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e9 b1 5e}
037fh mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7376ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 6a 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 f8 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e9 b1 5e}
03bbh mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73769a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 69 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c78813f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 13 88 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 f8 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e9 b1 5e}
03f7h mov rax,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 27 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7376b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 6b 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a8 18 88 c7 f7 7f 00 00 e8 f3 f6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 e8 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 6c 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 b4 f6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 e7 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 75 f6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 e7 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 36 f6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 e7 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 6c 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 f7 f5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 e7 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 6f 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 b8 f5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 e6 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 6f 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 79 f5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa e6 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 6f 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 3a f5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b e6 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 6c 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 fb f4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c e6 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 6f 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 bc f4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed e5 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 6f 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 7d f4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae e5 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 6c 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 3e f4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f e5 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 6c 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 ff f3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 e5 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 6c 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 18 88 c7 f7 7f 00 00 e8 c0 f3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 e4 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 6f 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 18 88 c7 f7 7f 00 00 e8 84 f3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 e4 b1 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 6c 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 18 88 c7 f7 7f 00 00 e8 48 f3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 e4 b1 5e 48 b8 40 e6 27 c6 f7 7f 00 00 48 89 46 18 48 b8 00 70 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f6 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 e8 b1 5e}
004ch mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7376c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 6c 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f6 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 e7 b1 5e}
008bh mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7377020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 70 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f6 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 e7 b1 5e}
00cah mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7377010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 70 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f6 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 e7 b1 5e}
0109h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7376c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 6c 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f5 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 e7 b1 5e}
0148h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7376fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 6f 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f5 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 e6 b1 5e}
0187h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7376fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6f 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f5 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa e6 b1 5e}
01c6h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7376fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6f 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f5 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e6 b1 5e}
0205h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7376ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 6c 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f4 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c e6 b1 5e}
0244h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7376ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc f4 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed e5 b1 5e}
0283h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7376fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 6f 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f4 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae e5 b1 5e}
02c2h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7376cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6c 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f4 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f e5 b1 5e}
0301h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7376cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 6c 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f3 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 e5 b1 5e}
0340h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7376cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 6c 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f3 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e4 b1 5e}
037fh mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7376fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 6f 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 f3 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e4 b1 5e}
03bbh mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7376ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6c 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c78818a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 18 88 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 f3 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e4 b1 5e}
03f7h mov rax,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 27 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7377000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 70 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 f3 f1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 e3 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 b4 f1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 e2 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 75 f1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 e2 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 36 f1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 e2 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 f7 f0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 e2 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 b8 f0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 e1 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 79 f0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa e1 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 3a f0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b e1 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 fb ef b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c e1 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 bc ef b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed e0 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 7d ef b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae e0 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 3e ef b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f e0 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 ff ee b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 e0 b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 70 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 c0 ee b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 df b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 70 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 84 ee b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 df b1 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 70 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 1a 88 c7 f7 7f 00 00 e8 48 ee b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 df b1 5e 48 b8 80 e6 27 c6 f7 7f 00 00 48 89 46 18 48 b8 10 71 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f1 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 e3 b1 5e}
004ch mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7377040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 70 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f1 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 e2 b1 5e}
008bh mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7377130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 71 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f1 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 e2 b1 5e}
00cah mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7377120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 71 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f1 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 e2 b1 5e}
0109h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7377050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 70 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f0 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 e2 b1 5e}
0148h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73770c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 70 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f0 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 e1 b1 5e}
0187h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73770b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 70 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f0 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa e1 b1 5e}
01c6h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73770d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 70 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f0 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e1 b1 5e}
0205h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73770a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 70 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ef b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c e1 b1 5e}
0244h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7377100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 71 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ef b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed e0 b1 5e}
0283h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73770e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 70 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ef b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae e0 b1 5e}
02c2h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7377070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 70 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ef b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f e0 b1 5e}
0301h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7377090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 70 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ee b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 e0 b1 5e}
0340h mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7377080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 70 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 ee b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 df b1 5e}
037fh mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c73770f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 70 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 ee b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 df b1 5e}
03bbh mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7377060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 70 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7881ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 88 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ee b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 df b1 5e}
03f7h mov rax,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e6 27 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7377110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 71 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 f3 ec b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 de b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 b4 ec b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 dd b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 75 ec b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 dd b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 36 ec b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 dd b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 f7 eb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 dd b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 b8 eb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 dc b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 79 eb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa dc b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 3a eb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b dc b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 fb ea b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c dc b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 bc ea b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed db b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 7d ea b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae db b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 3e ea b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f db b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 ff e9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 db b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 71 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 c0 e9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 da b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 72 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 84 e9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 da b1 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 71 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 1c 88 c7 f7 7f 00 00 e8 48 e9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 da b1 5e 48 b8 c0 e6 27 c6 f7 7f 00 00 48 89 46 18 48 b8 30 72 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ec b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 de b1 5e}
004ch mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7377160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 71 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ec b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 dd b1 5e}
008bh mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7377250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 72 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 ec b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 dd b1 5e}
00cah mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7377240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 72 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 ec b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 dd b1 5e}
0109h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7377170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 71 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 eb b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 dd b1 5e}
0148h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73771e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 71 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 eb b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 dc b1 5e}
0187h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73771d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 71 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 eb b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa dc b1 5e}
01c6h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c73771f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 71 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a eb b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b dc b1 5e}
0205h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73771c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 71 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ea b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c dc b1 5e}
0244h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7377220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 72 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ea b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed db b1 5e}
0283h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7377200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 72 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ea b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae db b1 5e}
02c2h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7377190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 71 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ea b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f db b1 5e}
0301h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73771b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 71 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff e9 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 db b1 5e}
0340h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73771a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 71 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 e9 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 da b1 5e}
037fh mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7377210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 72 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 e9 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 da b1 5e}
03bbh mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7377180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 71 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7881cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 88 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 e9 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 da b1 5e}
03f7h mov rax,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e6 27 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7377230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 72 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 f3 e7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 d9 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 b4 e7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 d8 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 73 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 75 e7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 d8 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 73 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 36 e7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 d8 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 f7 e6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 d8 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 b8 e6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 d7 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 79 e6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa d7 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 73 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 3a e6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b d7 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 fb e5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c d7 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 73 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 bc e5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed d6 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 73 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 7d e5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae d6 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 3e e5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f d6 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 ff e4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 d6 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 72 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 c0 e4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 d5 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 73 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 84 e4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 d5 b1 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 72 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 1e 88 c7 f7 7f 00 00 e8 48 e4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 d5 b1 5e 48 b8 00 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 40 73 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e7 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d9 b1 5e}
004ch mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7377270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 72 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e7 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 d8 b1 5e}
008bh mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7377360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 73 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 e7 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 d8 b1 5e}
00cah mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7377350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 73 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 e7 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 d8 b1 5e}
0109h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7377280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 72 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 e6 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 d8 b1 5e}
0148h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73772f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 72 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 e6 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d7 b1 5e}
0187h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73772e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 72 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e6 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d7 b1 5e}
01c6h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7377300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 73 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e6 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b d7 b1 5e}
0205h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73772d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 72 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb e5 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c d7 b1 5e}
0244h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7377330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 73 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e5 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d6 b1 5e}
0283h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7377310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 73 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e5 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae d6 b1 5e}
02c2h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c73772a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 72 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e e5 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f d6 b1 5e}
0301h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73772c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 72 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff e4 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 d6 b1 5e}
0340h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73772b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 72 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 e4 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d5 b1 5e}
037fh mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7377320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 73 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 e4 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 d5 b1 5e}
03bbh mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7377290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 72 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7881ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1e 88 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 e4 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 d5 b1 5e}
03f7h mov rax,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 27 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7377340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 73 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e8 20 88 c7 f7 7f 00 00 e8 f3 e2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 d4 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 73 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 b4 e2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 d3 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 75 e2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 d3 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 36 e2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 d3 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 f7 e1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 d3 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 b8 e1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 d2 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 79 e1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa d2 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 3a e1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b d2 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 fb e0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c d2 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 bc e0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed d1 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 7d e0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae d1 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 3e e0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f d1 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 ff df b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 d1 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 7d 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 20 88 c7 f7 7f 00 00 e8 c0 df b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 d0 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 7d 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 20 88 c7 f7 7f 00 00 e8 84 df b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 d0 b1 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 7d 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 20 88 c7 f7 7f 00 00 e8 48 df b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 d0 b1 5e 48 b8 40 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 7d 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e2 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d4 b1 5e}
004ch mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7377390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 73 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e2 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 d3 b1 5e}
008bh mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7377e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7e 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 e2 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 d3 b1 5e}
00cah mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7377e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7e 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 e2 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 d3 b1 5e}
0109h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7377d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 7d 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 e1 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 d3 b1 5e}
0148h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7377da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7d 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 e1 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d2 b1 5e}
0187h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7377d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e1 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d2 b1 5e}
01c6h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7377db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7d 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e1 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b d2 b1 5e}
0205h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7377d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7d 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb e0 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c d2 b1 5e}
0244h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7377de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7d 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc e0 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d1 b1 5e}
0283h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7377dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 7d 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e0 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae d1 b1 5e}
02c2h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7377d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e e0 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f d1 b1 5e}
0301h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7377d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7d 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff df b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 d1 b1 5e}
0340h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7377d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7d 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 df b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d0 b1 5e}
037fh mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7377dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7d 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 df b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 d0 b1 5e}
03bbh mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7377d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7d 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c78820e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 88 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 df b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 d0 b1 5e}
03f7h mov rax,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e7 27 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7377df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 7d 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f8 22 88 c7 f7 7f 00 00 e8 f3 dd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 cf b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 b4 dd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ce b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 75 dd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 ce b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 36 dd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 ce b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 f7 dc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ce b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 b8 dc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 cd b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 79 dc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa cd b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 3a dc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b cd b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 fb db b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c cd b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 bc db b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed cc b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 7d db b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae cc b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 3e db b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f cc b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 ff da b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 cc b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 7e 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 22 88 c7 f7 7f 00 00 e8 c0 da b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 cb b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 7e 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 22 88 c7 f7 7f 00 00 e8 84 da b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 cb b1 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 7e 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 22 88 c7 f7 7f 00 00 e8 48 da b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 cb b1 5e 48 b8 80 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 00 7f 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 dd b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 cf b1 5e}
004ch mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7377e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 7e 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 dd b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ce b1 5e}
008bh mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7377f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 7f 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 dd b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ce b1 5e}
00cah mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7377f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7f 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 dd b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ce b1 5e}
0109h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7377e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7e 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 dc b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ce b1 5e}
0148h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7377eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7e 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 dc b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 cd b1 5e}
0187h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7377ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7e 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 dc b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa cd b1 5e}
01c6h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7377ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 7e 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a dc b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b cd b1 5e}
0205h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7377e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7e 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb db b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c cd b1 5e}
0244h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7377ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 7e 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc db b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed cc b1 5e}
0283h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7377ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7e 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d db b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae cc b1 5e}
02c2h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7377e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7e 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e db b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f cc b1 5e}
0301h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7377e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7e 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff da b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 cc b1 5e}
0340h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7377e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7e 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 da b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 cb b1 5e}
037fh mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7377ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7e 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 da b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 cb b1 5e}
03bbh mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7377e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7e 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c78822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 88 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 da b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 cb b1 5e}
03f7h mov rax,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e7 27 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7377f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 7f 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 08 25 88 c7 f7 7f 00 00 e8 f3 d8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 ca b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 b4 d8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 c9 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 80 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 75 d8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 c9 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 80 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 36 d8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 c9 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 f7 d7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 c9 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 b8 d7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 c8 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 79 d7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa c8 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 3a d7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b c8 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 fb d6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c c8 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 80 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 bc d6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed c7 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 7d d6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae c7 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 3e d6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f c7 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 ff d5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 c7 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 7f 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 25 88 c7 f7 7f 00 00 e8 c0 d5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 c6 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 80 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 25 88 c7 f7 7f 00 00 e8 84 d5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 c6 b1 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 7f 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 25 88 c7 f7 7f 00 00 e8 48 d5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 c6 b1 5e 48 b8 c0 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 20 80 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
002eh mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 d8 b1 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ca b1 5e}
004ch mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7377f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7f 37 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 d8 b1 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 c9 b1 5e}
008bh mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7378040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 80 37 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 d8 b1 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 c9 b1 5e}
00cah mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7378030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 80 37 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 d8 b1 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 c9 b1 5e}
0109h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7377f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7f 37 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 d7 b1 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 c9 b1 5e}
0148h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7377fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7f 37 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 d7 b1 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 c8 b1 5e}
0187h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7377fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 7f 37 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 d7 b1 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa c8 b1 5e}
01c6h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7377fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7f 37 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a d7 b1 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b c8 b1 5e}
0205h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7377fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7f 37 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb d6 b1 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c8 b1 5e}
0244h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7378010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 80 37 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc d6 b1 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed c7 b1 5e}
0283h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7377ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 7f 37 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d d6 b1 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae c7 b1 5e}
02c2h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7377f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7f 37 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e d6 b1 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f c7 b1 5e}
0301h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7377fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7f 37 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d5 b1 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 c7 b1 5e}
0340h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7377f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7f 37 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 d5 b1 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 c6 b1 5e}
037fh mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7378000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 80 37 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 d5 b1 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 c6 b1 5e}
03bbh mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7377f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7f 37 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c7882508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 88 c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 d5 b1 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 c6 b1 5e}
03f7h mov rax,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e7 27 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7378020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 80 37 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
