------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out sbyte dst)
; parse_string_8i~out[121] = {57 56 53 48 83 ec 40 33 c0 48 89 44 24 28 48 8b f2 48 85 c9 75 07 c6 06 00 33 c0 eb 54 48 8d 79 0c 8b 59 08 e8 c7 87 01 4f 4c 8b c0 48 8d 4c 24 28 48 89 39 89 59 08 48 8d 4c 24 28 4c 8d 4c 24 38 ba 07 00 00 00 e8 25 99 00 4f 85 c0 75 10 8b 44 24 38 05 80 00 00 00 3d ff 00 00 00 76 07 c6 06 00 33 c0 eb 0b 8b 44 24 38 88 06 b8 01 00 00 00 48 83 c4 40 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0011h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0014h jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0016h mov byte ptr [rsi],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[3]{c6 06 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh jmp short 0071h                         ; JMP rel8 || EB cb || encoded[2]{eb 54}
001dh lea rdi,[rcx+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 79 0c}
0021h mov ebx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 59 08}
0024h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 87 01 4f}
0029h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
002ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0031h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
0034h mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
0037h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
003ch lea r9,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 38}
0041h mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0046h call 7ff816cfc870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 99 00 4f}
004bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
004dh jne short 005fh                         ; JNE rel8 || 75 cb || encoded[2]{75 10}
004fh mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0053h add eax,80h                             ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 80 00 00 00}
0058h cmp eax,0ffh                            ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d ff 00 00 00}
005dh jbe short 0066h                         ; JBE rel8 || 76 cb || encoded[2]{76 07}
005fh mov byte ptr [rsi],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[3]{c6 06 00}
0062h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0064h jmp short 0071h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
0066h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
006ah mov [rsi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 06}
006ch mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0071h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0075h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out byte dst)
; parse_string_8u~out[115] = {57 56 53 48 83 ec 40 33 c0 48 89 44 24 28 48 8b f2 48 85 c9 75 07 c6 06 00 33 c0 eb 4e 48 8d 79 0c 8b 59 08 e8 37 7f 01 4f 4c 8b c0 48 8d 4c 24 28 48 89 39 89 59 08 48 8d 4c 24 28 4c 8d 4c 24 38 ba 07 00 00 00 e8 75 09 a7 ff 85 c0 75 0a 81 7c 24 38 ff 00 00 00 76 07 c6 06 00 33 c0 eb 0b 8b 44 24 38 88 06 b8 01 00 00 00 48 83 c4 40 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0011h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0014h jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0016h mov byte ptr [rsi],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[3]{c6 06 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh jmp short 006bh                         ; JMP rel8 || EB cb || encoded[2]{eb 4e}
001dh lea rdi,[rcx+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 79 0c}
0021h mov ebx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 59 08}
0024h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 7f 01 4f}
0029h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
002ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0031h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
0034h mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
0037h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
003ch lea r9,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 38}
0041h mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0046h call 7ff7c7764150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 09 a7 ff}
004bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
004dh jne short 0059h                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
004fh cmp dword ptr [rsp+38h],0ffh            ; CMP r/m32, imm32 || o32 81 /7 id || encoded[8]{81 7c 24 38 ff 00 00 00}
0057h jbe short 0060h                         ; JBE rel8 || 76 cb || encoded[2]{76 07}
0059h mov byte ptr [rsi],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[3]{c6 06 00}
005ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
005eh jmp short 006bh                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
0060h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0064h mov [rsi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 06}
0066h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
006bh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
006fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0072h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out short dst)
; parse_string_16i~out[126] = {57 56 53 48 83 ec 40 33 c0 48 89 44 24 28 48 8b f2 48 85 c9 75 09 66 c7 06 00 00 33 c0 eb 57 48 8d 79 0c 8b 59 08 e8 b5 7c 01 4f 4c 8b c0 48 8d 4c 24 28 48 89 39 89 59 08 48 8d 4c 24 28 4c 8d 4c 24 38 ba 07 00 00 00 e8 13 8e 00 4f 85 c0 75 10 8b 44 24 38 05 00 80 00 00 3d ff ff 00 00 76 09 66 c7 06 00 00 33 c0 eb 0c 8b 44 24 38 66 89 06 b8 01 00 00 00 48 83 c4 40 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0011h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0014h jne short 001fh                         ; JNE rel8 || 75 cb || encoded[2]{75 09}
0016h mov word ptr [rsi],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[5]{66 c7 06 00 00}
001bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001dh jmp short 0076h                         ; JMP rel8 || EB cb || encoded[2]{eb 57}
001fh lea rdi,[rcx+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 79 0c}
0023h mov ebx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 59 08}
0026h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 7c 01 4f}
002bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
002eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0033h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
0036h mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
0039h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
003eh lea r9,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 38}
0043h mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0048h call 7ff816cfc870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 8e 00 4f}
004dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
004fh jne short 0061h                         ; JNE rel8 || 75 cb || encoded[2]{75 10}
0051h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0055h add eax,8000h                           ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 80 00 00}
005ah cmp eax,0ffffh                          ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d ff ff 00 00}
005fh jbe short 006ah                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
0061h mov word ptr [rsi],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[5]{66 c7 06 00 00}
0066h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0068h jmp short 0076h                         ; JMP rel8 || EB cb || encoded[2]{eb 0c}
006ah mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
006eh mov [rsi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 06}
0071h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0076h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
007ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out ushort dst)
; parse_string_16u~out[120] = {57 56 53 48 83 ec 40 33 c0 48 89 44 24 28 48 8b f2 48 85 c9 75 09 66 c7 06 00 00 33 c0 eb 51 48 8d 79 0c 8b 59 08 e8 15 7c 01 4f 4c 8b c0 48 8d 4c 24 28 48 89 39 89 59 08 48 8d 4c 24 28 4c 8d 4c 24 38 ba 07 00 00 00 e8 53 06 a7 ff 85 c0 75 0a 81 7c 24 38 ff ff 00 00 76 09 66 c7 06 00 00 33 c0 eb 0c 8b 44 24 38 66 89 06 b8 01 00 00 00 48 83 c4 40 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000eh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0011h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0014h jne short 001fh                         ; JNE rel8 || 75 cb || encoded[2]{75 09}
0016h mov word ptr [rsi],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[5]{66 c7 06 00 00}
001bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001dh jmp short 0070h                         ; JMP rel8 || EB cb || encoded[2]{eb 51}
001fh lea rdi,[rcx+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 79 0c}
0023h mov ebx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 59 08}
0026h call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 7c 01 4f}
002bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
002eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0033h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
0036h mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
0039h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
003eh lea r9,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 38}
0043h mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0048h call 7ff7c7764150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 06 a7 ff}
004dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
004fh jne short 005bh                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
0051h cmp dword ptr [rsp+38h],0ffffh          ; CMP r/m32, imm32 || o32 81 /7 id || encoded[8]{81 7c 24 38 ff ff 00 00}
0059h jbe short 0064h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
005bh mov word ptr [rsi],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[5]{66 c7 06 00 00}
0060h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0062h jmp short 0070h                         ; JMP rel8 || EB cb || encoded[2]{eb 0c}
0064h mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
0068h mov [rsi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 06}
006bh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0070h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out int dst)
; parse_string_32i~out[86] = {56 48 83 ec 30 33 c0 48 89 44 24 20 48 8b f2 48 85 c9 75 06 33 c9 89 0e eb 34 48 8d 41 0c 8b 51 08 48 8d 4c 24 20 48 89 01 89 51 08 e8 7f 7b 01 4f 4c 8b c0 48 8d 4c 24 20 4c 8b ce ba 07 00 00 00 e8 ea 8c 00 4f 85 c0 0f 94 c1 0f b6 c9 8b c1 48 83 c4 30 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000ch mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0012h jne short 001ah                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0014h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0016h mov [rsi],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 0e}
0018h jmp short 004eh                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
001ah lea rax,[rcx+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 0c}
001eh mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
0021h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0026h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0029h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002ch call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 7b 01 4f}
0031h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0034h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0039h mov r9,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b ce}
003ch mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0041h call 7ff816cfc870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 8c 00 4f}
0046h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0048h sete cl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c1}
004bh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
004eh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out uint dst)
; parse_string_32u~out[86] = {56 48 83 ec 30 33 c0 48 89 44 24 20 48 8b f2 48 85 c9 75 06 33 c9 89 0e eb 34 48 8d 41 0c 8b 51 08 48 8d 4c 24 20 48 89 01 89 51 08 e8 0f 7b 01 4f 4c 8b c0 48 8d 4c 24 20 4c 8b ce ba 07 00 00 00 e8 5a 05 a7 ff 85 c0 0f 94 c1 0f b6 c9 8b c1 48 83 c4 30 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000ch mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0012h jne short 001ah                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0014h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0016h mov [rsi],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 0e}
0018h jmp short 004eh                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
001ah lea rax,[rcx+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 0c}
001eh mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
0021h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0026h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0029h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002ch call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 7b 01 4f}
0031h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0034h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0039h mov r9,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b ce}
003ch mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
0041h call 7ff7c7764150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 05 a7 ff}
0046h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0048h sete cl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c1}
004bh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
004eh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out long dst)
; parse_string_64i~out[18] = {48 83 ec 28 90 e8 5e f4 a3 ff 0f b6 c0 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c7733088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e f4 a3 ff}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out ulong dst)
; parse_string_64u~out[18] = {48 83 ec 28 90 e8 1e f6 a3 ff 0f b6 c0 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c7733278h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f6 a3 ff}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out float dst)
; parse_string_32f~out[92] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b f2 48 85 c9 75 0c c5 f8 57 c0 c5 fa 11 06 33 c0 eb 2f 48 8d 79 0c 8b 59 08 e8 3f 7a 01 4f 4c 8b c0 48 8d 4c 24 20 48 89 39 89 59 08 48 8d 4c 24 20 4c 8b ce ba e7 00 00 00 e8 df 04 a7 ff 0f b6 c0 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0014h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0017h jne short 0025h                         ; JNE rel8 || 75 cb || encoded[2]{75 0c}
0019h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001dh vmovss dword ptr [rsi],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 06}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h jmp short 0054h                         ; JMP rel8 || EB cb || encoded[2]{eb 2f}
0025h lea rdi,[rcx+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 79 0c}
0029h mov ebx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 59 08}
002ch call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 7a 01 4f}
0031h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0034h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0039h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
003ch mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
003fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0044h mov r9,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b ce}
0047h mov edx,0e7h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba e7 00 00 00}
004ch call 7ff7c77641b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 04 a7 ff}
0051h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0054h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0058h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit parse(string src, out double dst)
; parse_string_64f~out[92] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b f2 48 85 c9 75 0c c5 f8 57 c0 c5 fb 11 06 33 c0 eb 2f 48 8d 79 0c 8b 59 08 e8 9f 78 01 4f 4c 8b c0 48 8d 4c 24 20 48 89 39 89 59 08 48 8d 4c 24 20 4c 8b ce ba e7 00 00 00 e8 37 03 a7 ff 0f b6 c0 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0014h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0017h jne short 0025h                         ; JNE rel8 || 75 cb || encoded[2]{75 0c}
0019h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001dh vmovsd qword ptr [rsi],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 06}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h jmp short 0054h                         ; JMP rel8 || EB cb || encoded[2]{eb 2f}
0025h lea rdi,[rcx+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 79 0c}
0029h mov ebx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 59 08}
002ch call 7ff816d0b6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 78 01 4f}
0031h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0034h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0039h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
003ch mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
003fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0044h mov r9,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b ce}
0047h mov edx,0e7h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba e7 00 00 00}
004ch call 7ff7c77641a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 03 a7 ff}
0051h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0054h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0058h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
