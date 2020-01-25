; BitVector<ushort> evalspec<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; evalspec__0o_g16u[7ff7c6b71e90h, 7ff7c6b7200eh][382] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a3 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff 00 00 eb 78 33 c0 eb 74 8b c8 e8 70 fb ff ff eb 6b 8b c8 e8 b7 fa ff ff eb 62 8b c8 e8 1e fb ff ff eb 59 8b c8 e8 05 fb ff ff eb 50 8b c8 e8 1c fb ff ff eb 47 8b c8 e8 e3 fa ff ff eb 3e 0f b7 c0 eb 39 0f b7 c2 eb 34 8b c8 e8 a0 fa ff ff eb 2b 8b c8 e8 b7 fa ff ff eb 22 8b c8 e8 9e fa ff ff eb 19 8b c8 e8 f5 fa ff ff eb 10 8b c8 e8 6c fa ff ff eb 07 8b c8 e8 f3 fa ff ff 90 48 83 c4 28 5b 5d 5e 5f c3 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 52 4d 33 5f 48 8b f8 40 88 77 08 48 b9 38 87 36 c6 f7 7f 00 00 e8 7c d0 2d 5f 48 8b c8 e8 e4 a5 ea ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 23 4d 33 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 0c e6 45 5f 48 8b e8 8b ce e8 aa a1 ea ff 4c 8b c0 48 8b cd 48 8b d7 e8 7c 21 82 ff 48 8b d0 48 8b cb e8 99 b8 83 ff 48 8b cb e8 31 99 2a 5f cc 2e 00 00 00 32 00 00 00 9f 00 00 00 68 00 00 00 8d 00 00 00 6d 00 00 00 56 00 00 00 44 00 00 00 4d 00 00 00 5f 00 00 00 7b 00 00 00 84 00 00 00 72 00 00 00 96 00 00 00 3b 00 00 00 27 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:39:129
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0016h ja near ptr 00bfh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a3 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea r8,[7ff7c6b71fd0h]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 1b 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[7ff7c6b71e9fh]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
003bh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c6b71a48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 fb ff ff}
0048h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c6b71998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 fa ff ff}
0051h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c6b71a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e fb ff ff}
005ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c6b719f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 fb ff ff}
0063h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c6b71a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c fb ff ff}
006ch jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c6b719e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 fa ff ff}
0075h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0077h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
007ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0081h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0083h call 7ff7c6b719b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 fa ff ff}
0088h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008ch call 7ff7c6b719d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 fa ff ff}
0091h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0093h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0095h call 7ff7c6b719c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e fa ff ff}
009ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009eh call 7ff7c6b71a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 fa ff ff}
00a3h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c6b719a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c fa ff ff}
00ach jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aeh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b0h call 7ff7c6b71a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fa ff ff}
00b5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
00bfh mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
00c9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 4d 33 5f}
00ceh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d1h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d5h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
00dfh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c d0 2d 5f}
00e4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e7h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 a5 ea ff}
00ech mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00eeh mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 4d 33 5f}
00fdh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0100h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0105h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
010fh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c e6 45 5f}
0114h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0117h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0119h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa a1 ea ff}
011eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0121h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0124h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0127h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 21 82 ff}
012ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0132h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 b8 83 ff}
0137h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 99 2a 5f}
013fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0140h add cs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{2e 00 00}
0143h add [rdx],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 32}
0145h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0147h add [rdi+68000000h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9f 00 00 00 68}
014dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
014fh add [rbp+6d000000h],cl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 8d 00 00 00 6d}
0155h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0157h add [rsi],dl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 56 00}
015ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
015ch add [rax],r8b                           ; ADD r/m8, r8 || 00 /r || encoded[3]{44 00 00}
015fh add [rbp],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 4d 00}
0162h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0164h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0165h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0167h add [rbx],bh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 7b 00}
016ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
016ch test al,[rax]                           ; TEST r/m8, r8 || 84 /r || encoded[2]{84 00}
016eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0170h jb short 0172h                          ; JB rel8 || 72 cb || encoded[2]{72 00}
0172h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0174h xchg esi,eax                            ; XCHG r32, EAX || o32 90+rd || encoded[1]{96}
0175h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0177h add [rbx],bh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 3b}
0179h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017bh add [rdi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 27}
017dh (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
