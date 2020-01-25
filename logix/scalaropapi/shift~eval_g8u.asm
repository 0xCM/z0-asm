; ulong eval<ulong>(ShiftOpKind:byte kind, ulong a, byte count)
; shift~eval_g8u[7ff7c6b87740h, 7ff7c6b87843h][259] = {57 56 55 53 48 83 ec 28 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 19 41 8b c9 48 8d 05 e7 00 00 00 8b 04 88 4c 8d 0d df ff ff ff 49 03 c1 ff e0 40 80 fe 08 75 4c 41 0f b6 c8 48 d3 ca 48 8b c2 48 83 c4 28 5b 5d 5e 5f c3 41 0f b6 c8 48 8b c2 48 d3 e0 48 83 c4 28 5b 5d 5e 5f c3 41 0f b6 c8 48 8b c2 48 d3 e8 48 83 c4 28 5b 5d 5e 5f c3 41 0f b6 c8 48 8b c2 48 d3 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 00 e9 91 c6 f7 7f 00 00 e8 df f4 31 5f 48 8b f8 40 88 77 08 48 b9 78 a6 36 c6 f7 7f 00 00 e8 09 78 2c 5f 48 8b c8 e8 71 4d e9 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 b0 f4 31 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 99 8d 44 5f 48 8b e8 8b ce e8 37 49 e9 ff 4c 8b c0 48 8b cd 48 8b d7 e8 09 c9 80 ff 48 8b d0 48 8b cb e8 26 60 82 ff 48 8b cb e8 be 40 29 5f cc}
; Capture completion code, ZEDx6
; 2020-01-25 02:10:39:659
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000eh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0011h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001ah lea rax,[7ff7c6b87848h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e7 00 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea r9,[7ff7c6b8774ah]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002bh add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0034h jne short 0082h                         ; JNE rel8 || 75 cb || encoded[2]{75 4c}
0036h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
003ah ror rdx,cl                              ; ROR r/m64, CL || REX.W D3 /1 || encoded[3]{48 d3 ca}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
004dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0050h shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
0053h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0057h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0058h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
005ch movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0060h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0063h shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006eh ret                                     ; RET || C3 || encoded[1]{c3}
006fh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0073h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0076h rol rax,cl                              ; ROL r/m64, CL || REX.W D3 /0 || encoded[3]{48 d3 c0}
0079h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c691e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 91 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f4 31 5f}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
00a2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 78 2c 5f}
00a7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00aah call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 4d e9 ff}
00afh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b1h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00bbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 f4 31 5f}
00c0h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c3h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00c8h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
00d2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 8d 44 5f}
00d7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00dch call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 49 e9 ff}
00e1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00eah call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 c9 80 ff}
00efh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 60 82 ff}
00fah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 40 29 5f}
0102h int 3                                   ; INT3 || CC || encoded[1]{cc}
