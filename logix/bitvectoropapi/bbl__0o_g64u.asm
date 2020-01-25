; BitVector<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; bbl__0o_g64u[7ff7c6b706b0h, 7ff7c6b7085eh][430] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 d6 00 00 00 8b c0 48 8d 0d 50 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 a6 00 00 00 33 c0 e9 9f 00 00 00 49 23 d0 48 8b c2 e9 94 00 00 00 48 8b c2 49 8b d0 48 23 c2 48 f7 d0 e9 83 00 00 00 48 8b c2 49 8b d0 48 0b c2 eb 78 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 6a 48 8b c2 49 8b d0 48 33 c2 eb 5f 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 51 48 8b c2 eb 4c 49 8b c0 eb 47 48 8b c2 48 f7 d0 eb 3f 49 8b c0 48 f7 d0 eb 37 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 26 48 8b c2 49 8b d0 c4 e2 f8 f2 c2 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 04 65 33 5f 48 8b f8 40 88 77 08 48 b9 78 a6 36 c6 f7 7f 00 00 e8 2e e8 2d 5f 48 8b c8 e8 96 bd ea ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 d5 64 33 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 be fd 45 5f 48 8b e8 8b ce e8 5c b9 ea ff 4c 8b c0 48 8b cd 48 8b d7 e8 2e 39 82 ff 48 8b d0 48 8b cb e8 4b d0 83 ff 48 8b cb e8 e3 b0 2a 5f cc 00 00 34 00 00 00 3b 00 00 00 cf 00 00 00 89 00 00 00 b4 00 00 00 8e 00 00 00 70 00 00 00 57 00 00 00 62 00 00 00 7b 00 00 00 9b 00 00 00 a3 00 00 00 93 00 00 00 c1 00 00 00 46 00 00 00 25 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:39:109
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00edh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 d6 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[7ff7c6b70820h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 50 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[7ff7c6b706bah]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0039h jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 00 00 00}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9f 00 00 00}
0045h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
0048h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
004bh jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 94 00 00 00}
0050h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0053h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0056h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0059h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
005ch jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
0061h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0064h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0067h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
006ah jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
006ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006fh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0072h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0075h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0078h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
007ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
007dh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0080h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0083h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
0085h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0088h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
008bh xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
008eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0091h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 51}
0093h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0096h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0098h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
009bh jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
009dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00a0h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00a3h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
00a5h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
00a8h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00abh jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 37}
00adh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00b0h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00b3h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
00b6h not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
00b9h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00bch jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00beh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00c1h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00c4h andn rax,rax,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c2}
00c9h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
00cbh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00ceh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00d1h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00d4h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00d7h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
00d9h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00dch mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
00dfh andn rax,rcx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c0}
00e4h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00e8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00eah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ebh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ech ret                                     ; RET || C3 || encoded[1]{c3}
00edh mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 65 33 5f}
00fch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ffh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0103h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
010dh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e e8 2d 5f}
0112h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0115h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 bd ea ff}
011ah mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
011ch mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0126h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 64 33 5f}
012bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
012eh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0133h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
013dh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fd 45 5f}
0142h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0145h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0147h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c b9 ea ff}
014ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
014fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0152h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0155h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 39 82 ff}
015ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
015dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0160h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b d0 83 ff}
0165h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0168h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 b0 2a 5f}
016dh int 3                                   ; INT3 || CC || encoded[1]{cc}
016eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0170h xor al,0                                ; XOR AL, imm8 || 34 ib || encoded[2]{34 00}
0172h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0174h cmp eax,[rax]                           ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b 00}
0176h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0178h iretd                                   ; IRETD || o32 CF || encoded[1]{cf}
0179h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017bh add [rcx-4c000000h],cl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 89 00 00 00 b4}
0181h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0183h add [rsi+70000000h],cl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 8e 00 00 00 70}
0189h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
018bh add [rdi],dl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 57 00}
018eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0190h (bad)                                   ; <invalid> || <invalid> || encoded[4]{62 00 00 00}
0194h jnp short 0196h                         ; JNP rel8 || 7B cb || encoded[2]{7b 00}
0196h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0198h wait                                    ; WAIT || 9B || encoded[1]{9b}
0199h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
019bh add [rbx-6d000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 93}
01a1h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01a3h add cl,al                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 c1}
01a5h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01a7h add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 46 00}
01aah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01ach (bad)                                   ; <invalid> || <invalid> || encoded[2]{25 00}
