------------------------------------------------------------------------------------------------------------------------
; string format(NumericIndicator:ushort src)
; format_NumericIndicator~16u[155] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 0f b7 c1 85 c0 75 07 be 65 00 00 00 eb 03 0f b7 f1 48 b9 10 67 34 c6 f7 7f 00 00 e8 94 f6 b0 5f 48 8b f8 66 89 77 08 33 f6 48 b9 20 00 34 c6 f7 7f 00 00 ba 55 01 00 00 e8 77 fa b0 5f 49 b8 88 13 56 e7 0b 02 00 00 4d 8b 00 48 ba d8 33 56 e7 0b 02 00 00 48 8b 12 48 8d 4c 24 28 48 89 39 48 89 71 08 48 89 71 10 4c 89 41 18 4c 8d 44 24 28 33 c9 e8 fd ca fd ff 90 48 83 c4 48 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
001fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0021h jne short 002ah                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0023h mov esi,65h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 65 00 00 00}
0028h jmp short 002dh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002ah movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
002dh mov rcx,7ff7c6346710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 67 34 c6 f7 7f 00 00}
0037h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 f6 b0 5f}
003ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
003fh mov [rdi+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 77 08}
0043h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0045h mov rcx,7ff7c6340020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 34 c6 f7 7f 00 00}
004fh mov edx,155h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 01 00 00}
0054h call 7ff825ea70b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 fa b0 5f}
0059h mov r8,20be7561388h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 88 13 56 e7 0b 02 00 00}
0063h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0066h mov rdx,20be75633d8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 33 56 e7 0b 02 00 00}
0070h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0073h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0078h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
007bh mov [rcx+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 71 08}
007fh mov [rcx+10h],rsi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 71 10}
0083h mov [rcx+18h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 41 18}
0087h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
008ch xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008eh call 7ff7c6374170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ca fd ff}
0093h nop                                     ; NOP || o32 90 || encoded[1]{90}
0094h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0098h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0099h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string format(FixedWidth:uint src)
; format_FixedWidth~32u[118] = {56 48 83 ec 40 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 8b f1 48 b9 08 8f 34 c6 f7 7f 00 00 e8 64 ce 50 5f 89 70 08 45 33 c0 48 ba 88 13 56 e7 0b 02 00 00 48 8b 12 48 b9 d8 33 56 e7 0b 02 00 00 48 8b 09 4c 8d 4c 24 20 49 89 01 4d 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 20 48 8b d1 33 c9 e8 b1 bd 55 4f 90 48 83 c4 40 5e c3}
; TermCode = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000ch mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0011h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0016h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
001bh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001dh mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
0027h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ce 50 5f}
002ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
002fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0032h mov rdx,20be7561388h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 88 13 56 e7 0b 02 00 00}
003ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
003fh mov rcx,20be75633d8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 33 56 e7 0b 02 00 00}
0049h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
004ch lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
0051h mov [r9],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 01}
0054h mov [r9+8],r8                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 08}
0058h mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
005ch mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0060h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0065h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0068h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
006ah call 7ff815ef5c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 bd 55 4f}
006fh nop                                     ; NOP || o32 90 || encoded[1]{90}
0070h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
