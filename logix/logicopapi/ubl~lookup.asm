------------------------------------------------------------------------------------------------------------------------
; UnaryOp<bit> lookup(UnaryBitLogicKind:byte kind)
; ubl~lookup[113] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 03 0f 87 28 01 00 00 8b c9 48 8d 05 7a 01 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 f5 65 c7 f7 7f 00 00 e8 44 3a bd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 2b bd 5e 48 b8 e0 e0 24 c6 f7 7f 00 00 48 89 46 18 48 b8 80 1b 2d c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000ch cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
000fh ja near ptr 013dh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 28 01 00 00}
0015h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0017h lea rax,[rip+17ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 7a 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh mov rcx,7ff7c765f510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f5 65 c7 f7 7f 00 00}
0037h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 3a bd 5e}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 2b bd 5e}
004bh mov rax,7ff7c624e0e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e0 24 c6 f7 7f 00 00}
0055h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0059h mov rax,7ff7c72d1b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1b 2d c7 f7 7f 00 00}
0063h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0067h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
