; long eval<long>(UnaryBitLogicKind:byte kind, long a)
; ubl~eval_g8u[7ff7c6b7b200h, 7ff7c6b7b2b2h][178] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 12 40 80 fe 02 75 1b 48 8b c2 48 83 c4 28 5b 5d 5e 5f c3 48 8b c2 48 f7 d0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 e8 f9 91 c6 f7 7f 00 00 e8 70 ba 32 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 9a 3d 2d 5f 48 8b c8 e8 02 13 ea ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 41 ba 32 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 2a 53 45 5f 48 8b e8 8b ce e8 c8 0e ea ff 4c 8b c0 48 8b cd 48 8b d7 e8 9a 8e 81 ff 48 8b d0 48 8b cb e8 b7 25 83 ff 48 8b cb e8 4f 06 2a 5f cc}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:39:482
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0022h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0031h                         ; JNE rel8 || 75 cb || encoded[2]{75 1b}
0016h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0019h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
0022h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0025h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0028h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
002dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
0031h mov rcx,7ff7c691f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 91 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 ba 32 5f}
0040h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0043h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0047h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0051h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 3d 2d 5f}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 13 ea ff}
005eh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0060h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
006ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ba 32 5f}
006fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0072h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0077h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
0081h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 53 45 5f}
0086h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0089h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
008bh call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 0e ea ff}
0090h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0093h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0096h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0099h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 8e 81 ff}
009eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00a1h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00a4h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 25 83 ff}
00a9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ach call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 06 2a 5f}
00b1h int 3                                   ; INT3 || CC || encoded[1]{cc}
