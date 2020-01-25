; UnaryOp<long> lookup<long>(UnaryBitLogicKind:byte kind)
; ubl~lookup_g8u[7ff7c6b8b6e0h, 7ff7c6b8b819h][313] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 90 53 c8 c6 f7 7f 00 00 e8 a7 b5 31 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 a6 31 5f 48 b8 e0 e0 26 c6 f7 7f 00 00 48 89 46 18 48 b8 30 aa b7 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 90 53 c8 c6 f7 7f 00 00 e8 61 b5 31 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 a6 31 5f 48 b8 e0 e0 26 c6 f7 7f 00 00 48 89 46 18 48 b8 20 aa b7 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 e8 f9 91 c6 f7 7f 00 00 e8 1b b5 31 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 45 38 2c 5f 48 8b c8 e8 ad 0d e9 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 ec b4 31 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 d5 4d 44 5f 48 8b e8 8b ce e8 73 09 e9 ff 4c 8b c0 48 8b cd 48 8b d7 e8 45 89 80 ff 48 8b d0 48 8b cb e8 62 20 82 ff 48 8b cb e8 fa 00 29 5f cc 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; Capture completion code, ZEDx6
; 2020-01-25 02:10:39:724
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c6c85390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 53 c8 c6 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 b5 31 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 a6 31 5f}
0038h mov rax,7ff7c626e0e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e0 26 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c6b7aa30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 aa b7 c6 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
0060h mov rcx,7ff7c6c85390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 53 c8 c6 f7 7f 00 00}
006ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 b5 31 5f}
006fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0072h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0076h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0079h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 a6 31 5f}
007eh mov rax,7ff7c626e0e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e0 26 c6 f7 7f 00 00}
0088h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
008ch mov rax,7ff7c6b7aa20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 aa b7 c6 f7 7f 00 00}
0096h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
009ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
009dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
00a6h mov rcx,7ff7c691f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 91 c6 f7 7f 00 00}
00b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b b5 31 5f}
00b5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00b8h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00bch mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
00c6h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 38 2c 5f}
00cbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ceh call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 0d e9 ff}
00d3h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00d5h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec b4 31 5f}
00e4h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e7h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00ech mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
00f6h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 4d 44 5f}
00fbh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00feh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0100h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 09 e9 ff}
0105h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0108h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010bh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
010eh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 89 80 ff}
0113h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0116h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0119h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 20 82 ff}
011eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0121h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 00 29 5f}
0126h int 3                                   ; INT3 || CC || encoded[1]{cc}
0127h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0129h or [7ff7cafac00fh],al                   ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
012fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0131h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0132h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0135h jo short 0137h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0137h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
