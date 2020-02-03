------------------------------------------------------------------------------------------------------------------------
; byte parse<byte>(string src)
; parse_g[167] = {57 56 55 53 48 83 ec 38 33 c0 48 89 44 24 30 48 89 44 24 20 48 89 44 24 28 48 8b f1 33 ff 48 85 f6 75 06 33 db 33 ed eb 4e 48 8d 5e 0c 8b 6e 08 e8 db f3 fd 4f 4c 8b c0 48 8d 4c 24 20 48 89 19 89 69 08 48 8d 4c 24 20 4c 8d 4c 24 30 ba 07 00 00 00 e8 91 c6 69 ff 85 c0 75 0a 81 7c 24 30 ff 00 00 00 76 06 33 db 33 ed eb 0c 8b 44 24 30 0f b6 d8 bd 01 00 00 00 85 ed 74 09 8b fb b8 01 00 00 00 eb 02 33 c0 85 c0 74 0b 8b c7 48 83 c4 38 5b 5d 5e 5f c3 48 8b ce e8 53 fb ff ff 90 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0019h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001ch xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
001eh test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0021h jne short 0029h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0023h xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
0025h xor ebp,ebp                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ed}
0027h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 4e}
0029h lea rbx,[rsi+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 5e 0c}
002dh mov ebp,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 6e 08}
0030h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f3 fd 4f}
0035h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0038h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003dh mov [rcx],rbx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 19}
0040h mov [rcx+8],ebp                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 69 08}
0043h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0048h lea r9,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 30}
004dh mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0052h call 7ff7c63c89c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c6 69 ff}
0057h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0059h jne short 0065h                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
005bh cmp dword ptr [rsp+30h],0ffh            ; CMP r/m32, imm32 || o32 81 /7 id || encoded[8]{81 7c 24 30 ff 00 00 00}
0063h jbe short 006bh                         ; JBE rel8 || 76 cb || encoded[2]{76 06}
0065h xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
0067h xor ebp,ebp                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ed}
0069h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 0c}
006bh mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
006fh movzx ebx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d8}
0072h mov ebp,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bd 01 00 00 00}
0077h test ebp,ebp                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ed}
0079h je short 0084h                          ; JE rel8 || 74 cb || encoded[2]{74 09}
007bh mov edi,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fb}
007dh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0082h jmp short 0086h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0084h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0086h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0088h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
008ah mov eax,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c7}
008ch add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0090h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0091h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0092h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0093h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0094h ret                                     ; RET || C3 || encoded[1]{c3}
0095h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0098h call 7ff7c6d2bed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 fb ff ff}
009dh nop                                     ; NOP || o32 90 || encoded[1]{90}
009eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00a2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte parse<sbyte>(string src)
; parse_g[174] = {57 56 55 53 48 83 ec 38 33 c0 48 89 44 24 30 48 89 44 24 20 48 89 44 24 28 48 8b f1 33 ff 48 85 f6 75 06 33 db 33 ed eb 55 48 8d 5e 0c 8b 6e 08 e8 0b f3 fd 4f 4c 8b c0 48 8d 4c 24 20 48 89 19 89 69 08 48 8d 4c 24 20 4c 8d 4c 24 30 ba 07 00 00 00 e8 69 04 fd 4f 85 c0 75 10 8b 44 24 30 05 80 00 00 00 3d ff 00 00 00 76 06 33 db 33 ed eb 0d 8b 44 24 30 48 0f be d8 bd 01 00 00 00 85 ed 74 09 8b fb b8 01 00 00 00 eb 02 33 c0 85 c0 74 0b 8b c7 48 83 c4 38 5b 5d 5e 5f c3 48 8b ce e8 cc fa ff ff 90 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0019h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001ch xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
001eh test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0021h jne short 0029h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0023h xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
0025h xor ebp,ebp                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ed}
0027h jmp short 007eh                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0029h lea rbx,[rsi+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 5e 0c}
002dh mov ebp,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 6e 08}
0030h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f3 fd 4f}
0035h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0038h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003dh mov [rcx],rbx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 19}
0040h mov [rcx+8],ebp                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 69 08}
0043h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0048h lea r9,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 30}
004dh mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0052h call 7ff816cfc870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 04 fd 4f}
0057h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0059h jne short 006bh                         ; JNE rel8 || 75 cb || encoded[2]{75 10}
005bh mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
005fh add eax,80h                             ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 80 00 00 00}
0064h cmp eax,0ffh                            ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d ff 00 00 00}
0069h jbe short 0071h                         ; JBE rel8 || 76 cb || encoded[2]{76 06}
006bh xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
006dh xor ebp,ebp                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ed}
006fh jmp short 007eh                         ; JMP rel8 || EB cb || encoded[2]{eb 0d}
0071h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0075h movsx rbx,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d8}
0079h mov ebp,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bd 01 00 00 00}
007eh test ebp,ebp                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ed}
0080h je short 008bh                          ; JE rel8 || 74 cb || encoded[2]{74 09}
0082h mov edi,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fb}
0084h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0089h jmp short 008dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
008dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
008fh je short 009ch                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
0091h mov eax,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c7}
0093h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0097h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0098h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009bh ret                                     ; RET || C3 || encoded[1]{c3}
009ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
009fh call 7ff7c6d2bf20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc fa ff ff}
00a4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00a5h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00a9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00abh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ach pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00adh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort parse<ushort>(string src)
; parse_g[167] = {57 56 55 53 48 83 ec 38 33 c0 48 89 44 24 30 48 89 44 24 20 48 89 44 24 28 48 8b f1 33 ff 48 85 f6 75 06 33 db 33 ed eb 4e 48 8d 5e 0c 8b 6e 08 e8 3b f2 fd 4f 4c 8b c0 48 8d 4c 24 20 48 89 19 89 69 08 48 8d 4c 24 20 4c 8d 4c 24 30 ba 07 00 00 00 e8 f1 c4 69 ff 85 c0 75 0a 81 7c 24 30 ff ff 00 00 76 06 33 db 33 ed eb 0c 8b 44 24 30 0f b7 d8 bd 01 00 00 00 85 ed 74 09 8b fb b8 01 00 00 00 eb 02 33 c0 85 c0 74 0b 8b c7 48 83 c4 38 5b 5d 5e 5f c3 48 8b ce e8 63 fa ff ff 90 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0019h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001ch xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
001eh test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0021h jne short 0029h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0023h xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
0025h xor ebp,ebp                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ed}
0027h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 4e}
0029h lea rbx,[rsi+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 5e 0c}
002dh mov ebp,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 6e 08}
0030h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b f2 fd 4f}
0035h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0038h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003dh mov [rcx],rbx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 19}
0040h mov [rcx+8],ebp                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 69 08}
0043h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0048h lea r9,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 30}
004dh mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0052h call 7ff7c63c89c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 c4 69 ff}
0057h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0059h jne short 0065h                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
005bh cmp dword ptr [rsp+30h],0ffffh          ; CMP r/m32, imm32 || o32 81 /7 id || encoded[8]{81 7c 24 30 ff ff 00 00}
0063h jbe short 006bh                         ; JBE rel8 || 76 cb || encoded[2]{76 06}
0065h xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
0067h xor ebp,ebp                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ed}
0069h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 0c}
006bh mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
006fh movzx ebx,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d8}
0072h mov ebp,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bd 01 00 00 00}
0077h test ebp,ebp                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ed}
0079h je short 0084h                          ; JE rel8 || 74 cb || encoded[2]{74 09}
007bh mov edi,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fb}
007dh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0082h jmp short 0086h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0084h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0086h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0088h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
008ah mov eax,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c7}
008ch add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0090h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0091h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0092h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0093h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0094h ret                                     ; RET || C3 || encoded[1]{c3}
0095h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0098h call 7ff7c6d2bf80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 fa ff ff}
009dh nop                                     ; NOP || o32 90 || encoded[1]{90}
009eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00a2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short parse<short>(string src)
; parse_g[174] = {57 56 55 53 48 83 ec 38 33 c0 48 89 44 24 30 48 89 44 24 20 48 89 44 24 28 48 8b f1 33 ff 48 85 f6 75 06 33 db 33 ed eb 55 48 8d 5e 0c 8b 6e 08 e8 6b f1 fd 4f 4c 8b c0 48 8d 4c 24 20 48 89 19 89 69 08 48 8d 4c 24 20 4c 8d 4c 24 30 ba 07 00 00 00 e8 c9 02 fd 4f 85 c0 75 10 8b 44 24 30 05 00 80 00 00 3d ff ff 00 00 76 06 33 db 33 ed eb 0d 8b 44 24 30 48 0f bf d8 bd 01 00 00 00 85 ed 74 09 8b fb b8 01 00 00 00 eb 02 33 c0 85 c0 74 0b 8b c7 48 83 c4 38 5b 5d 5e 5f c3 48 8b ce e8 cc f9 ff ff 90 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0019h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001ch xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
001eh test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0021h jne short 0029h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0023h xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
0025h xor ebp,ebp                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ed}
0027h jmp short 007eh                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0029h lea rbx,[rsi+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 5e 0c}
002dh mov ebp,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 6e 08}
0030h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f1 fd 4f}
0035h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0038h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003dh mov [rcx],rbx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 19}
0040h mov [rcx+8],ebp                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 69 08}
0043h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0048h lea r9,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 30}
004dh mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0052h call 7ff816cfc870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 02 fd 4f}
0057h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0059h jne short 006bh                         ; JNE rel8 || 75 cb || encoded[2]{75 10}
005bh mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
005fh add eax,8000h                           ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 80 00 00}
0064h cmp eax,0ffffh                          ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d ff ff 00 00}
0069h jbe short 0071h                         ; JBE rel8 || 76 cb || encoded[2]{76 06}
006bh xor ebx,ebx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 db}
006dh xor ebp,ebp                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ed}
006fh jmp short 007eh                         ; JMP rel8 || EB cb || encoded[2]{eb 0d}
0071h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0075h movsx rbx,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d8}
0079h mov ebp,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bd 01 00 00 00}
007eh test ebp,ebp                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ed}
0080h je short 008bh                          ; JE rel8 || 74 cb || encoded[2]{74 09}
0082h mov edi,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fb}
0084h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0089h jmp short 008dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
008dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
008fh je short 009ch                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
0091h mov eax,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c7}
0093h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0097h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0098h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0099h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009bh ret                                     ; RET || C3 || encoded[1]{c3}
009ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
009fh call 7ff7c6d2bfc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f9 ff ff}
00a4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00a5h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00a9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00abh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ach pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00adh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint parse<uint>(string src)
; parse_g[147] = {57 56 48 83 ec 38 33 c0 48 89 44 24 30 48 89 44 24 20 48 89 44 24 28 48 8b f1 33 c0 89 44 24 30 33 ff 48 85 f6 75 08 33 c0 89 44 24 30 eb 36 48 8d 46 0c 8b 56 08 48 8d 4c 24 20 48 89 01 89 51 08 e8 8a f0 fd 4f 4c 8b c0 48 8d 4c 24 20 4c 8d 4c 24 30 ba 07 00 00 00 e8 4b c3 69 ff 85 c0 0f 94 c0 0f b6 c0 85 c0 74 0b 8b 7c 24 30 b8 01 00 00 00 eb 02 33 c0 85 c0 74 09 8b c7 48 83 c4 38 5e 5f c3 48 8b ce e8 65 f9 ff ff 90 48 83 c4 38 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0012h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0017h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch mov [rsp+30h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 30}
0020h xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
0022h test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0025h jne short 002fh                         ; JNE rel8 || 75 cb || encoded[2]{75 08}
0027h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0029h mov [rsp+30h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 30}
002dh jmp short 0065h                         ; JMP rel8 || EB cb || encoded[2]{eb 36}
002fh lea rax,[rsi+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 46 0c}
0033h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0036h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003bh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
003eh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0041h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f0 fd 4f}
0046h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0049h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
004eh lea r9,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 30}
0053h mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0058h call 7ff7c63c89c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b c3 69 ff}
005dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
005fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0062h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0065h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0067h je short 0074h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
0069h mov edi,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 7c 24 30}
006dh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0072h jmp short 0076h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0074h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0076h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0078h je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 09}
007ah mov eax,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c7}
007ch add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0086h call 7ff7c6d2c010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 f9 ff ff}
008bh nop                                     ; NOP || o32 90 || encoded[1]{90}
008ch add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int parse<int>(string src)
; parse_g[147] = {57 56 48 83 ec 38 33 c0 48 89 44 24 30 48 89 44 24 20 48 89 44 24 28 48 8b f1 33 c0 89 44 24 30 33 ff 48 85 f6 75 08 33 c0 89 44 24 30 eb 36 48 8d 46 0c 8b 56 08 48 8d 4c 24 20 48 89 01 89 51 08 e8 da ef fd 4f 4c 8b c0 48 8d 4c 24 20 4c 8d 4c 24 30 ba 07 00 00 00 e8 43 01 fd 4f 85 c0 0f 94 c0 0f b6 c0 85 c0 74 0b 8b 7c 24 30 b8 01 00 00 00 eb 02 33 c0 85 c0 74 09 8b c7 48 83 c4 38 5e 5f c3 48 8b ce e8 f5 f8 ff ff 90 48 83 c4 38 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0012h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0017h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch mov [rsp+30h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 30}
0020h xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
0022h test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0025h jne short 002fh                         ; JNE rel8 || 75 cb || encoded[2]{75 08}
0027h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0029h mov [rsp+30h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 30}
002dh jmp short 0065h                         ; JMP rel8 || EB cb || encoded[2]{eb 36}
002fh lea rax,[rsi+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 46 0c}
0033h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0036h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003bh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
003eh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0041h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da ef fd 4f}
0046h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0049h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
004eh lea r9,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 30}
0053h mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0058h call 7ff816cfc870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 01 fd 4f}
005dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
005fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0062h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0065h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0067h je short 0074h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
0069h mov edi,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 7c 24 30}
006dh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0072h jmp short 0076h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0074h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0076h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0078h je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 09}
007ah mov eax,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c7}
007ch add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0086h call 7ff7c6d2c050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 f8 ff ff}
008bh nop                                     ; NOP || o32 90 || encoded[1]{90}
008ch add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong parse<ulong>(string src)
; parse_g[89] = {57 56 48 83 ec 28 33 c0 48 89 44 24 20 48 8b f1 33 d2 48 89 54 24 20 33 ff 48 8d 54 24 20 48 8b ce e8 d2 6a 67 ff 0f b6 c0 85 c0 74 0c 48 8b 7c 24 20 b8 01 00 00 00 eb 02 33 c0 85 c0 74 0a 48 8b c7 48 83 c4 28 5e 5f c3 48 8b ce e8 cf f8 ff ff 90 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0012h mov [rsp+20h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 20}
0017h xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
0019h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
001eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0021h call 7ff7c63a3278h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 6a 67 ff}
0026h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0029h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
002bh je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
002dh mov rdi,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 7c 24 20}
0032h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0037h jmp short 003bh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
003dh je short 0049h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
003fh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0042h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004ch call 7ff7c6d2c0a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf f8 ff ff}
0051h nop                                     ; NOP || o32 90 || encoded[1]{90}
0052h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0056h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0057h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0058h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long parse<long>(string src)
; parse_g[89] = {57 56 48 83 ec 28 33 c0 48 89 44 24 20 48 8b f1 33 d2 48 89 54 24 20 33 ff 48 8d 54 24 20 48 8b ce e8 62 68 67 ff 0f b6 c0 85 c0 74 0c 48 8b 7c 24 20 b8 01 00 00 00 eb 02 33 c0 85 c0 74 0a 48 8b c7 48 83 c4 28 5e 5f c3 48 8b ce e8 8f f8 ff ff 90 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0012h mov [rsp+20h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 20}
0017h xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
0019h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
001eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0021h call 7ff7c63a3088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 68 67 ff}
0026h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0029h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
002bh je short 0039h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
002dh mov rdi,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 7c 24 20}
0032h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0037h jmp short 003bh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
003dh je short 0049h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
003fh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0042h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004ch call 7ff7c6d2c0e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f f8 ff ff}
0051h nop                                     ; NOP || o32 90 || encoded[1]{90}
0052h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0056h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0057h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0058h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float parse<float>(string src)
; parse_g[174] = {57 56 53 48 83 ec 40 c5 f8 77 33 c0 89 44 24 38 48 89 44 24 28 48 89 44 24 30 48 8b f1 c5 f8 57 c0 c5 fa 11 44 24 38 33 c0 89 44 24 3c 48 85 f6 75 0e c5 f8 57 c0 c5 fa 11 44 24 38 33 ff eb 32 48 8d 7e 0c 8b 5e 08 e8 24 ea fd 4f 4c 8b c0 48 8d 4c 24 28 48 89 39 89 59 08 48 8d 4c 24 28 4c 8d 4c 24 38 ba e7 00 00 00 e8 3a bd 69 ff 40 0f b6 f8 85 ff 74 13 c5 fa 10 44 24 38 c5 fa 11 44 24 3c b9 01 00 00 00 eb 02 33 c9 85 c9 74 0e c5 fa 10 44 24 3c 48 83 c4 40 5b 5e 5f c3 48 8b ce e8 0b f4 ff ff 90 48 83 c4 40 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+38h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 38}
0010h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0015h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
001ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001dh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0021h vmovss dword ptr [rsp+38h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 38}
0027h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0029h mov [rsp+3ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 3c}
002dh test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0030h jne short 0040h                         ; JNE rel8 || 75 cb || encoded[2]{75 0e}
0032h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0036h vmovss dword ptr [rsp+38h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 38}
003ch xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
003eh jmp short 0072h                         ; JMP rel8 || EB cb || encoded[2]{eb 32}
0040h lea rdi,[rsi+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 7e 0c}
0044h mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
0047h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ea fd 4f}
004ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
0057h mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
005ah lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
005fh lea r9,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 38}
0064h mov edx,0e7h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba e7 00 00 00}
0069h call 7ff7c63c8a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a bd 69 ff}
006eh movzx edi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f8}
0072h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0074h je short 0089h                          ; JE rel8 || 74 cb || encoded[2]{74 13}
0076h vmovss xmm0,dword ptr [rsp+38h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 38}
007ch vmovss dword ptr [rsp+3ch],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 3c}
0082h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0087h jmp short 008bh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0089h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008bh test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
008dh je short 009dh                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
008fh vmovss xmm0,dword ptr [rsp+3ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 3c}
0095h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
009dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00a0h call 7ff7c6d2c130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f4 ff ff}
00a5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00a6h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00aah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00abh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ach pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00adh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double parse<double>(string src)
; parse_g[176] = {57 56 53 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 89 44 24 28 48 8b f1 c5 f8 57 c0 c5 fb 11 44 24 30 33 c0 48 89 44 24 38 48 85 f6 75 0e c5 f8 57 c0 c5 fb 11 44 24 30 33 ff eb 32 48 8d 7e 0c 8b 5e 08 e8 52 e9 fd 4f 4c 8b c0 48 8d 4c 24 20 48 89 39 89 59 08 48 8d 4c 24 20 4c 8d 4c 24 30 ba e7 00 00 00 e8 60 bc 69 ff 40 0f b6 f8 85 ff 74 13 c5 fb 10 44 24 30 c5 fb 11 44 24 38 b9 01 00 00 00 eb 02 33 c9 85 c9 74 0e c5 fb 10 44 24 38 48 83 c4 40 5b 5e 5f c3 48 8b ce e8 c1 fa ff ff 90 48 83 c4 40 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0022h vmovsd qword ptr [rsp+30h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 30}
0028h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
002ah mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
002fh test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0032h jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 0e}
0034h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0038h vmovsd qword ptr [rsp+30h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 30}
003eh xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
0040h jmp short 0074h                         ; JMP rel8 || EB cb || encoded[2]{eb 32}
0042h lea rdi,[rsi+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 7e 0c}
0046h mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
0049h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 e9 fd 4f}
004eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0051h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0056h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
0059h mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
005ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0061h lea r9,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 30}
0066h mov edx,0e7h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba e7 00 00 00}
006bh call 7ff7c63c8a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 bc 69 ff}
0070h movzx edi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f8}
0074h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0076h je short 008bh                          ; JE rel8 || 74 cb || encoded[2]{74 13}
0078h vmovsd xmm0,qword ptr [rsp+30h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 30}
007eh vmovsd qword ptr [rsp+38h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 38}
0084h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0089h jmp short 008dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
008fh je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
0091h vmovsd xmm0,qword ptr [rsp+38h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 38}
0097h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
009fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00a2h call 7ff7c6d2c8b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fa ff ff}
00a7h nop                                     ; NOP || o32 90 || encoded[1]{90}
00a8h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00ach pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00adh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00aeh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00afh ret                                     ; RET || C3 || encoded[1]{c3}
