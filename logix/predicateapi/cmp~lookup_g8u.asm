; BinaryPred<long> lookup<long>(ComparisonKind:byte kind)
; cmp~lookup_g8u[7ff7c6cf0120h, 7ff7c6cf0366h][582] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 b7 e3 c6 f7 7f 00 00 e8 50 6b 1b 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 5c 1b 5f 48 b9 30 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 cf b6 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 b7 e3 c6 f7 7f 00 00 e8 11 6b 1b 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 5c 1b 5f 48 b9 30 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d0 b6 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 b7 e3 c6 f7 7f 00 00 e8 d2 6a 1b 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 5c 1b 5f 48 b9 30 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 d0 b6 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 b7 e3 c6 f7 7f 00 00 e8 93 6a 1b 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 5b 1b 5f 48 b9 30 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 d0 b6 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 b7 e3 c6 f7 7f 00 00 e8 57 6a 1b 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 5b 1b 5f 48 b9 30 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 d0 b6 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 b7 e3 c6 f7 7f 00 00 e8 1b 6a 1b 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 5b 1b 5f 48 b8 30 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 18 d1 b6 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 48 d5 88 c6 f7 7f 00 00 e8 d5 69 1b 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 ff ec 15 5f 48 8b c8 e8 87 e4 d2 ff 8b f0 48 b9 50 58 58 c6 f7 7f 00 00 e8 a6 69 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 8f 02 2e 5f 48 8b e8 8b ce e8 65 bc 6a ff 4c 8b c0 48 8b cd 48 8b d7 e8 ff 3d 68 ff 48 8b d0 48 8b cb e8 cc ea 69 ff 48 8b cb e8 b4 b5 12 5f cc 00 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 02:54:56:879
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[7ff7c6cf0350h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[7ff7c6cf012ah]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6e3b798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 e3 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 6b 1b 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 5c 1b 5f}
004fh mov rcx,7ff7c624df30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 df 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6b6cfb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 cf b6 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e3b798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 e3 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 6b 1b 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 5c 1b 5f}
008eh mov rcx,7ff7c624df30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 df 24 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6b6d018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d0 b6 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e3b798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 e3 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 6a 1b 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 5c 1b 5f}
00cdh mov rcx,7ff7c624df30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 df 24 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6b6d058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d0 b6 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e3b798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 e3 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 6a 1b 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 5b 1b 5f}
010ch mov rcx,7ff7c624df30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 df 24 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6b6d098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d0 b6 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e3b798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 e3 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 6a 1b 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 5b 1b 5f}
0148h mov rcx,7ff7c624df30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 df 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6b6d0d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d0 b6 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e3b798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 e3 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 6a 1b 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 5b 1b 5f}
0184h mov rax,7ff7c624df30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 df 24 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6b6d118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 d1 b6 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c688d548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d5 88 c6 f7 7f 00 00}
01b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 69 1b 5f}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
01cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ec 15 5f}
01d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d4h call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 e4 d2 ff}
01d9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
01dbh mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
01e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 69 1b 5f}
01eah mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01edh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
01f2h mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
01fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 02 2e 5f}
0201h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0204h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0206h call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 bc 6a ff}
020bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0211h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0214h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 3d 68 ff}
0219h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
021fh call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ea 69 ff}
0224h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0227h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 b5 12 5f}
022ch int 3                                   ; INT3 || CC || encoded[1]{cc}
022dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
022fh add [rdi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 27}
0231h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0233h add [rbp-1c000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a5 00 00 00 e4}
0239h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023bh add [rax],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 20}
023dh add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
023fh add [rcx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 01 00}
0243h add [rsi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 66 00}
