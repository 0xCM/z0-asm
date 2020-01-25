; BinaryOp<Vector128<long>> lookup<long>(N128 w, ComparisonKind:byte kind)
; cmp~lookup__n128_0o_gVector128`1[7ff7c6cbcce0h, 7ff7c6cbce76h][406] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 a7 d8 c6 f7 7f 00 00 e8 90 9f 1e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 90 1e 5f 48 b8 40 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 bc ca c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 a7 d8 c6 f7 7f 00 00 e8 4a 9f 1e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 90 1e 5f 48 b8 40 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 bc ca c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d0 a7 d8 c6 f7 7f 00 00 e8 04 9f 1e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 90 1e 5f 48 b8 40 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 98 bc ca c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 48 d5 88 c6 f7 7f 00 00 e8 be 9e 1e 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 e8 21 19 5f 48 8b c8 e8 70 19 d6 ff 8b f0 48 b9 50 58 58 c6 f7 7f 00 00 e8 8f 9e 1e 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 78 37 31 5f 48 8b e8 8b ce e8 4e f1 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 e8 72 6b ff 48 8b d0 48 8b cb e8 b5 1f 6d ff 48 8b cb e8 9d ea 15 5f cc 00 00 00 00 27 00 00 00 6d 00 00 00 f9 00 00 00 b3 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 02:54:51:972
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[7ff7c6cbce68h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[7ff7c6cbcceah]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6d8a7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 d8 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 9f 1e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 90 1e 5f}
004fh mov rax,7ff7c624e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c6cabcb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 bc ca c6 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h mov rcx,7ff7c6d8a7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 d8 c6 f7 7f 00 00}
0081h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 9f 1e 5f}
0086h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0089h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
008dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0090h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 90 1e 5f}
0095h mov rax,7ff7c624e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 24 c6 f7 7f 00 00}
009fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00a3h mov rax,7ff7c6cabca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 bc ca c6 f7 7f 00 00}
00adh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00b1h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00b4h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bch ret                                     ; RET || C3 || encoded[1]{c3}
00bdh mov rcx,7ff7c6d8a7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a7 d8 c6 f7 7f 00 00}
00c7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 9f 1e 5f}
00cch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00cfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00d3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00d6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 90 1e 5f}
00dbh mov rax,7ff7c624e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 24 c6 f7 7f 00 00}
00e5h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00e9h mov rax,7ff7c6cabc98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 bc ca c6 f7 7f 00 00}
00f3h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00f7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00fah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00feh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00ffh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0100h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0101h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0102h ret                                     ; RET || C3 || encoded[1]{c3}
0103h mov rcx,7ff7c688d548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d5 88 c6 f7 7f 00 00}
010dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 9e 1e 5f}
0112h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0115h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0119h mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
0123h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 21 19 5f}
0128h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012bh call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 19 d6 ff}
0130h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0132h mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
013ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 9e 1e 5f}
0141h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0144h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0149h mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
0153h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 37 31 5f}
0158h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
015bh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
015dh call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f1 6d ff}
0162h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0165h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0168h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
016bh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 72 6b ff}
0170h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0173h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0176h call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 1f 6d ff}
017bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
017eh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d ea 15 5f}
0183h int 3                                   ; INT3 || CC || encoded[1]{cc}
0184h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0186h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0188h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
018ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
018ch insd                                    ; INSD || o32 6D || encoded[1]{6d}
018dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
018fh add cl,bh                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 f9}
0191h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0193h (bad)                                   ; <invalid> || <invalid> || encoded[3]{00 b3 00}
