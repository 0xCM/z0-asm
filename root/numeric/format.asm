------------------------------------------------------------------------------------------------------------------------
; string format(FixedWidth:uint src)
; format_FixedWidth~32u[118] = {56 48 83 ec 40 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 8b f1 48 b9 08 8f 35 c6 f7 7f 00 00 e8 04 db 4f 5f 89 70 08 45 33 c0 48 ba 88 13 cf df 23 02 00 00 48 8b 12 48 b9 60 9e cf df 23 02 00 00 48 8b 09 4c 8d 4c 24 20 49 89 01 4d 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 20 48 8b d1 33 c9 e8 51 ca 54 4f 90 48 83 c4 40 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000ch mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0011h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0016h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
001bh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001dh mov rcx,7ff7c6358f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 35 c6 f7 7f 00 00}
0027h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 db 4f 5f}
002ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
002fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0032h mov rdx,223dfcf1388h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 88 13 cf df 23 02 00 00}
003ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
003fh mov rcx,223dfcf9e60h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 9e cf df 23 02 00 00}
0049h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
004ch lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
0051h mov [r9],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 01}
0054h mov [r9+8],r8                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 08}
0058h mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
005ch mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0060h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0065h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0068h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
006ah call 7ff815ef5c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 ca 54 4f}
006fh nop                                     ; NOP || o32 90 || encoded[1]{90}
0070h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
