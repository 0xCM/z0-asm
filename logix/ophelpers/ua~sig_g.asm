------------------------------------------------------------------------------------------------------------------------
; string sig<byte>(UnaryArithmeticKind:byte kind)
; ua~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 58 aa 97 c6 f7 7f 00 00 e8 e3 fd ff 5e 48 8b f8 40 88 77 08 48 b9 58 77 37 c6 f7 7f 00 00 e8 0d 81 fa 5e 48 8b c8 e8 b5 a5 b9 ff 8b c8 e8 2e 46 52 ff 45 33 c0 48 ba 90 13 34 d5 fa 01 00 00 48 8b 12 48 b9 a8 47 35 d5 fa 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 0e ed e5 4f 90 48 83 c4 48 5e 5f c3}
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
001eh mov rcx,7ff7c697aa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 aa 97 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 fd ff 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6377758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 37 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 81 fa 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 a5 b9 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 46 52 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1fad5341390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 34 d5 fa 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1fad53547a8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 35 d5 fa 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e ed e5 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<sbyte>(UnaryArithmeticKind:byte kind)
; ua~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 58 aa 97 c6 f7 7f 00 00 e8 23 fd ff 5e 48 8b f8 40 88 77 08 48 b9 68 6f 37 c6 f7 7f 00 00 e8 4d 80 fa 5e 48 8b c8 e8 f5 a4 b9 ff 8b c8 e8 6e 45 52 ff 45 33 c0 48 ba 90 13 34 d5 fa 01 00 00 48 8b 12 48 b9 a8 47 35 d5 fa 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 4e ec e5 4f 90 48 83 c4 48 5e 5f c3}
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
001eh mov rcx,7ff7c697aa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 aa 97 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 fd ff 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6376f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 37 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 80 fa 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 a4 b9 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 45 52 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1fad5341390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 34 d5 fa 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1fad53547a8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 35 d5 fa 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ec e5 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<ushort>(UnaryArithmeticKind:byte kind)
; ua~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 58 aa 97 c6 f7 7f 00 00 e8 63 fc ff 5e 48 8b f8 40 88 77 08 48 b9 38 87 37 c6 f7 7f 00 00 e8 8d 7f fa 5e 48 8b c8 e8 35 a4 b9 ff 8b c8 e8 ae 44 52 ff 45 33 c0 48 ba 90 13 34 d5 fa 01 00 00 48 8b 12 48 b9 a8 47 35 d5 fa 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 8e eb e5 4f 90 48 83 c4 48 5e 5f c3}
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
001eh mov rcx,7ff7c697aa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 aa 97 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 fc ff 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6378738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 37 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 7f fa 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 a4 b9 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 44 52 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1fad5341390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 34 d5 fa 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1fad53547a8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 35 d5 fa 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e eb e5 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<Int16>(UnaryArithmeticKind:byte kind)
; ua~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 58 aa 97 c6 f7 7f 00 00 e8 a3 fb ff 5e 48 8b f8 40 88 77 08 48 b9 48 7f 37 c6 f7 7f 00 00 e8 cd 7e fa 5e 48 8b c8 e8 75 a3 b9 ff 8b c8 e8 ee 43 52 ff 45 33 c0 48 ba 90 13 34 d5 fa 01 00 00 48 8b 12 48 b9 a8 47 35 d5 fa 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 ce ea e5 4f 90 48 83 c4 48 5e 5f c3}
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
001eh mov rcx,7ff7c697aa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 aa 97 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 fb ff 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6377f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 37 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 7e fa 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 a3 b9 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 43 52 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1fad5341390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 34 d5 fa 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1fad53547a8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 35 d5 fa 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce ea e5 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<uint>(UnaryArithmeticKind:byte kind)
; ua~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 58 aa 97 c6 f7 7f 00 00 e8 e3 fa ff 5e 48 8b f8 40 88 77 08 48 b9 d8 96 37 c6 f7 7f 00 00 e8 0d 7e fa 5e 48 8b c8 e8 b5 a2 b9 ff 8b c8 e8 2e 43 52 ff 45 33 c0 48 ba 90 13 34 d5 fa 01 00 00 48 8b 12 48 b9 a8 47 35 d5 fa 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 0e ea e5 4f 90 48 83 c4 48 5e 5f c3}
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
001eh mov rcx,7ff7c697aa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 aa 97 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 fa ff 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c63796d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 37 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 7e fa 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 a2 b9 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 43 52 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1fad5341390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 34 d5 fa 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1fad53547a8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 35 d5 fa 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e ea e5 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<int>(UnaryArithmeticKind:byte kind)
; ua~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 58 aa 97 c6 f7 7f 00 00 e8 23 fa ff 5e 48 8b f8 40 88 77 08 48 b9 08 8f 37 c6 f7 7f 00 00 e8 4d 7d fa 5e 48 8b c8 e8 f5 a1 b9 ff 8b c8 e8 6e 42 52 ff 45 33 c0 48 ba 90 13 34 d5 fa 01 00 00 48 8b 12 48 b9 a8 47 35 d5 fa 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 4e e9 e5 4f 90 48 83 c4 48 5e 5f c3}
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
001eh mov rcx,7ff7c697aa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 aa 97 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 fa ff 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6378f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 37 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 7d fa 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 a1 b9 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 42 52 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1fad5341390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 34 d5 fa 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1fad53547a8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 35 d5 fa 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e e9 e5 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<ulong>(UnaryArithmeticKind:byte kind)
; ua~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 58 aa 97 c6 f7 7f 00 00 e8 63 f9 ff 5e 48 8b f8 40 88 77 08 48 b9 78 a6 37 c6 f7 7f 00 00 e8 8d 7c fa 5e 48 8b c8 e8 35 a1 b9 ff 8b c8 e8 ae 41 52 ff 45 33 c0 48 ba 90 13 34 d5 fa 01 00 00 48 8b 12 48 b9 a8 47 35 d5 fa 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 8e e8 e5 4f 90 48 83 c4 48 5e 5f c3}
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
001eh mov rcx,7ff7c697aa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 aa 97 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f9 ff 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c637a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 37 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 7c fa 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 a1 b9 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 41 52 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1fad5341390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 34 d5 fa 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1fad53547a8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 35 d5 fa 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e e8 e5 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string sig<long>(UnaryArithmeticKind:byte kind)
; ua~sig_g8u[154] = {57 56 48 83 ec 48 33 c0 48 89 44 24 28 48 89 44 24 30 48 89 44 24 38 48 89 44 24 40 8b f1 48 b9 58 aa 97 c6 f7 7f 00 00 e8 a3 f8 ff 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 37 c6 f7 7f 00 00 e8 cd 7b fa 5e 48 8b c8 e8 75 a0 b9 ff 8b c8 e8 ee 40 52 ff 45 33 c0 48 ba 90 13 34 d5 fa 01 00 00 48 8b 12 48 b9 a8 47 35 d5 fa 01 00 00 48 8b 09 4c 8d 4c 24 28 49 89 39 49 89 41 08 4d 89 41 10 49 89 51 18 4c 8d 44 24 28 48 8b d1 33 c9 e8 ce e7 e5 4f 90 48 83 c4 48 5e 5f c3}
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
001eh mov rcx,7ff7c697aa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 aa 97 c6 f7 7f 00 00}
0028h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f8 ff 5e}
002dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0030h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0034h mov rcx,7ff7c6379ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 37 c6 f7 7f 00 00}
003eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 7b fa 5e}
0043h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0046h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 a0 b9 ff}
004bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004dh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 40 52 ff}
0052h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0055h mov rdx,1fad5341390h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 13 34 d5 fa 01 00 00}
005fh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0062h mov rcx,1fad53547a8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 35 d5 fa 01 00 00}
006ch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
006fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0074h mov [r9],rdi                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 39}
0077h mov [r9+8],rax                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 41 08}
007bh mov [r9+10h],r8                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4d 89 41 10}
007fh mov [r9+18h],rdx                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{49 89 51 18}
0083h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0088h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh call 7ff816d05c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce e7 e5 4f}
0092h nop                                     ; NOP || o32 90 || encoded[1]{90}
0093h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0097h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0098h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
