------------------------------------------------------------------------------------------------------------------------
; string sig<byte>(BinaryBitLogicKind:byte kind)
; bbl~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 e8 c8 a0 c6 f7 7f 00 00 e8 a3 62 b3 5e 48 8b f8 40 88 77 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 cd e5 ad 5e 48 8b c8 e8 75 b7 72 ff 8b c8 e8 de 12 02 ff 45 33 c0 48 ba 90 13 84 e2 e6 01 00 00 48 8b 12 48 b9 80 e8 89 e2 e6 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 ce 51 99 4f 90 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001eh mov rcx,7ff7c6a0c8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c8 a0 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 62 b3 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd e5 ad 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 b7 72 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 12 02 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1e6e2841390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 84 e2 e6 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1e6e289e880h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e8 89 e2 e6 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 51 99 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<sbyte>(BinaryBitLogicKind:byte kind)
; bbl~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 e8 c8 a0 c6 f7 7f 00 00 e8 e3 61 b3 5e 48 8b f8 40 88 77 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 0d e5 ad 5e 48 8b c8 e8 b5 b6 72 ff 8b c8 e8 1e 12 02 ff 45 33 c0 48 ba 90 13 84 e2 e6 01 00 00 48 8b 12 48 b9 80 e8 89 e2 e6 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 0e 51 99 4f 90 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001eh mov rcx,7ff7c6a0c8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c8 a0 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 61 b3 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d e5 ad 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 b6 72 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 12 02 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1e6e2841390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 84 e2 e6 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1e6e289e880h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e8 89 e2 e6 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 51 99 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<ushort>(BinaryBitLogicKind:byte kind)
; bbl~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 e8 c8 a0 c6 f7 7f 00 00 e8 23 61 b3 5e 48 8b f8 40 88 77 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 4d e4 ad 5e 48 8b c8 e8 f5 b5 72 ff 8b c8 e8 5e 11 02 ff 45 33 c0 48 ba 90 13 84 e2 e6 01 00 00 48 8b 12 48 b9 80 e8 89 e2 e6 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 4e 50 99 4f 90 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001eh mov rcx,7ff7c6a0c8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c8 a0 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 61 b3 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d e4 ad 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b5 72 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 11 02 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1e6e2841390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 84 e2 e6 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1e6e289e880h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e8 89 e2 e6 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 50 99 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<short>(BinaryBitLogicKind:byte kind)
; bbl~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 e8 c8 a0 c6 f7 7f 00 00 e8 63 60 b3 5e 48 8b f8 40 88 77 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 8d e3 ad 5e 48 8b c8 e8 35 b5 72 ff 8b c8 e8 9e 10 02 ff 45 33 c0 48 ba 90 13 84 e2 e6 01 00 00 48 8b 12 48 b9 80 e8 89 e2 e6 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 8e 4f 99 4f 90 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001eh mov rcx,7ff7c6a0c8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c8 a0 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 60 b3 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d e3 ad 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 b5 72 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 10 02 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1e6e2841390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 84 e2 e6 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1e6e289e880h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e8 89 e2 e6 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 4f 99 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<uint>(BinaryBitLogicKind:byte kind)
; bbl~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 e8 c8 a0 c6 f7 7f 00 00 e8 a3 5f b3 5e 48 8b f8 40 88 77 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 cd e2 ad 5e 48 8b c8 e8 75 b4 72 ff 8b c8 e8 de 0f 02 ff 45 33 c0 48 ba 90 13 84 e2 e6 01 00 00 48 8b 12 48 b9 80 e8 89 e2 e6 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 ce 4e 99 4f 90 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001eh mov rcx,7ff7c6a0c8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c8 a0 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 5f b3 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd e2 ad 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 b4 72 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 0f 02 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1e6e2841390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 84 e2 e6 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1e6e289e880h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e8 89 e2 e6 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 4e 99 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<int>(BinaryBitLogicKind:byte kind)
; bbl~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 e8 c8 a0 c6 f7 7f 00 00 e8 e3 5e b3 5e 48 8b f8 40 88 77 08 48 b9 08 8f 34 c6 f7 7f 00 00 e8 0d e2 ad 5e 48 8b c8 e8 b5 b3 72 ff 8b c8 e8 1e 0f 02 ff 45 33 c0 48 ba 90 13 84 e2 e6 01 00 00 48 8b 12 48 b9 80 e8 89 e2 e6 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 0e 4e 99 4f 90 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001eh mov rcx,7ff7c6a0c8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c8 a0 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 5e b3 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d e2 ad 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 b3 72 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 0f 02 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1e6e2841390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 84 e2 e6 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1e6e289e880h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e8 89 e2 e6 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 4e 99 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<ulong>(BinaryBitLogicKind:byte kind)
; bbl~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 e8 c8 a0 c6 f7 7f 00 00 e8 23 5e b3 5e 48 8b f8 40 88 77 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 4d e1 ad 5e 48 8b c8 e8 f5 b2 72 ff 8b c8 e8 5e 0e 02 ff 45 33 c0 48 ba 90 13 84 e2 e6 01 00 00 48 8b 12 48 b9 80 e8 89 e2 e6 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 4e 4d 99 4f 90 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001eh mov rcx,7ff7c6a0c8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c8 a0 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 5e b3 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d e1 ad 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b2 72 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 0e 02 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1e6e2841390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 84 e2 e6 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1e6e289e880h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e8 89 e2 e6 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 4d 99 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<long>(BinaryBitLogicKind:byte kind)
; bbl~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 e8 c8 a0 c6 f7 7f 00 00 e8 63 5d b3 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 8d e0 ad 5e 48 8b c8 e8 35 b2 72 ff 8b c8 e8 9e 0d 02 ff 45 33 c0 48 ba 90 13 84 e2 e6 01 00 00 48 8b 12 48 b9 80 e8 89 e2 e6 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 8e 4c 99 4f 90 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0008h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0017h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001ch mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
001eh mov rcx,7ff7c6a0c8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c8 a0 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 5d b3 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d e0 ad 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 b2 72 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 0d 02 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1e6e2841390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 84 e2 e6 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1e6e289e880h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e8 89 e2 e6 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 4c 99 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}