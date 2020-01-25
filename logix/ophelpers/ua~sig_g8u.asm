; string sig<long>(UnaryArithmeticKind:byte kind)
; ua~sig_g8u[7ff7c6e73cb0h, 7ff7c6e73d4ah][154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 e0 b8 91 c6 f7 7f 00 00 e8 d3 2f 03 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 fd b2 fd 5e 48 8b c8 e8 65 88 ba ff 8b c8 e8 56 84 ba ff 45 33 c0 48 ba 90 13 fe b1 cf 01 00 00 48 8b 12 48 b9 c0 48 ff b1 cf 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 fe 1e 06 4f 90 48 83 c4 48 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:51:560
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001eh mov rcx,7ff7c691b8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 b8 91 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 2f 03 5f}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd b2 fd 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 88 ba ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 84 ba ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1cfb1fe1390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 fe b1 cf 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1cfb1ff48c0h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 48 ff b1 cf 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff815ed5c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 1e 06 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
