------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, ComparisonKind:byte kind)
; cmp~lookup_gn256_0o[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 0d de c6 f7 7f 00 00 e8 d0 18 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 0a 19 5f 48 b8 70 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 54 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6de0d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 0d de c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 18 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 0a 19 5f}
004fh mov rax,7ff7c626e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c6d054c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 54 d0 c6 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, ComparisonKind:byte kind)
; cmp~lookup_gn256_0o[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 10 de c6 f7 7f 00 00 e8 10 17 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 08 19 5f 48 b8 70 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 68 56 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6de10a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 10 de c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 17 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 08 19 5f}
004fh mov rax,7ff7c626e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c6d05668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 56 d0 c6 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, ComparisonKind:byte kind)
; cmp~lookup_gn256_0o[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 12 de c6 f7 7f 00 00 e8 50 15 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 06 19 5f 48 b8 70 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 68 57 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6de12b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 12 de c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 15 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 06 19 5f}
004fh mov rax,7ff7c626e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c6d05768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 57 d0 c6 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, ComparisonKind:byte kind)
; cmp~lookup_gn256_0o[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 14 de c6 f7 7f 00 00 e8 90 13 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 04 19 5f 48 b8 70 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 98 58 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6de14c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 14 de c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 13 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 04 19 5f}
004fh mov rax,7ff7c626e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c6d05898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 58 d0 c6 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, ComparisonKind:byte kind)
; cmp~lookup_gn256_0o[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 16 de c6 f7 7f 00 00 e8 d0 11 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 03 19 5f 48 b8 70 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 5d d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6de16d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 16 de c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 11 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 03 19 5f}
004fh mov rax,7ff7c626e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c6d05de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 5d d0 c6 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, ComparisonKind:byte kind)
; cmp~lookup_gn256_0o[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 18 de c6 f7 7f 00 00 e8 10 10 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 01 19 5f 48 b8 70 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 28 5f d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6de18e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 18 de c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 10 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 01 19 5f}
004fh mov rax,7ff7c626e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c6d05f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 5f d0 c6 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, ComparisonKind:byte kind)
; cmp~lookup_gn256_0o[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 1a de c6 f7 7f 00 00 e8 50 0e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 ff 18 5f 48 b8 70 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 08 60 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6de1af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1a de c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 0e 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 ff 18 5f}
004fh mov rax,7ff7c626e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c6d06008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 60 d0 c6 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, ComparisonKind:byte kind)
; cmp~lookup_gn256_0o[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 1d de c6 f7 7f 00 00 e8 90 0c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 fd 18 5f 48 b8 70 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 60 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6de1d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1d de c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 0c 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fd 18 5f}
004fh mov rax,7ff7c626e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c6d060c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 60 d0 c6 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
