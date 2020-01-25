; bit eval(UnaryBitLogicKind:byte kind, bit a)
; ubl~eval[7ff7c670dfb0h, 7ff7c670e06eh][190] = {57 56 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 03 77 44 8b c0 48 8d 0d 96 00 00 00 8b 0c 81 4c 8d 05 e4 ff ff ff 49 03 c8 ff e1 33 c0 48 83 c4 28 5e 5f c3 8b c2 f7 d0 83 e0 01 48 83 c4 28 5e 5f c3 8b c2 48 83 c4 28 5e 5f c3 b8 01 00 00 00 48 83 c4 28 5e 5f c3 48 b9 e8 f9 91 c6 f7 7f 00 00 e8 9c 8c 79 5f 48 8b f8 40 88 77 08 48 b9 38 2a 5b c6 f7 7f 00 00 e8 86 8c 79 5f 48 8b f0 b9 58 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 6f 25 8c 5f 48 8b c8 48 8b d7 e8 e4 60 c8 ff 48 8b d0 48 8b ce e8 09 f8 c9 ff 48 8b ce e8 a1 d8 70 5f cc 21 00 00 00 2a 00 00 00 38 00 00 00 41 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:36:093
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000ch cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
000fh ja short 0055h                          ; JA rel8 || 77 cb || encoded[2]{77 44}
0011h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0013h lea rcx,[7ff7c670e060h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 96 00 00 00}
001ah mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
001dh lea r8,[7ff7c670dfb8h]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 e4 ff ff ff}
0024h add rcx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c8}
0027h jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0029h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0030h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
0032h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0034h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0036h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0039h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
0040h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0042h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
004eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c691f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 91 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 8c 79 5f}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 8c 79 5f}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,458h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 58 04 00 00}
0082h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 25 8c 5f}
0091h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0094h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0097h call 7ff7c6394130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 60 c8 ff}
009ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
009fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00a2h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f8 c9 ff}
00a7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 d8 70 5f}
00afh int 3                                   ; INT3 || CC || encoded[1]{cc}
00b0h and [rax],eax                           ; AND r/m32, r32 || o32 21 /r || encoded[2]{21 00}
00b2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00b4h sub al,[rax]                            ; SUB r8, r/m8 || 2A /r || encoded[2]{2a 00}
00b6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00b8h cmp [rax],al                            ; CMP r/m8, r8 || 38 /r || encoded[2]{38 00}
00bah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00bch (bad)                                   ; <invalid> || <invalid> || encoded[2]{41 00}
