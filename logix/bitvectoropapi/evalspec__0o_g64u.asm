; BitVector<ulong> evalspec<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; evalspec__0o_g64u[7ff7c6b72930h, 7ff7c6b72ac6h][406] = {57 56 55 53 48 83 ec 28 8b f1 48 8b c2 49 8b d0 40 0f b6 ce 83 f9 0f 0f 87 b7 00 00 00 8b c9 4c 8d 05 32 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 b8 ff ff ff ff ff ff ff ff e9 84 00 00 00 33 c0 e9 7d 00 00 00 48 8b c8 e8 4b fc ff ff eb 73 48 8b c8 e8 91 fb ff ff eb 69 48 8b c8 e8 f7 fb ff ff eb 5f 48 8b c8 e8 dd fb ff ff eb 55 48 8b c8 e8 f3 fb ff ff eb 4b 48 8b c8 e8 b9 fb ff ff eb 41 eb 3f 48 8b c2 eb 3a 48 8b c8 e8 78 fb ff ff eb 30 48 8b c8 e8 8e fb ff ff eb 26 48 8b c8 e8 74 fb ff ff eb 1c 48 8b c8 e8 ca fb ff ff eb 12 48 8b c8 e8 40 fb ff ff eb 08 48 8b c8 e8 c6 fb ff ff 90 48 83 c4 28 5b 5d 5e 5f c3 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 9d 42 33 5f 48 8b f8 40 88 77 08 48 b9 78 a6 36 c6 f7 7f 00 00 e8 c7 c5 2d 5f 48 8b c8 e8 2f 9b ea ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 6e 42 33 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 57 db 45 5f 48 8b e8 8b ce e8 f5 96 ea ff 4c 8b c0 48 8b cd 48 8b d7 e8 c7 16 82 ff 48 8b d0 48 8b cb e8 e4 ad 83 ff 48 8b cb e8 7c 8e 2a 5f cc 00 00 00 36 00 00 00 3d 00 00 00 b2 00 00 00 79 00 00 00 9e 00 00 00 7b 00 00 00 65 00 00 00 51 00 00 00 5b 00 00 00 6f 00 00 00 8a 00 00 00 94 00 00 00 80 00 00 00 a8 00 00 00 47 00 00 00 27 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:39:141
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0017h ja near ptr 00d4h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea r8,[7ff7c6b72a88h]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 32 01 00 00}
0026h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
002ah lea r9,[7ff7c6b72940h]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0031h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0034h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0037h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0041h jmp near ptr 00cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 84 00 00 00}
0046h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0048h jmp near ptr 00cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 7d 00 00 00}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c6b725d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fc ff ff}
0055h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c6b72520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 fb ff ff}
005fh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0061h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0064h call 7ff7c6b72590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fb ff ff}
0069h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
006bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006eh call 7ff7c6b72580h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd fb ff ff}
0073h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c6b725a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fb ff ff}
007dh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
007fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0082h call 7ff7c6b72570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 fb ff ff}
0087h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0089h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
008bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008eh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0090h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0093h call 7ff7c6b72540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 fb ff ff}
0098h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
009ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009dh call 7ff7c6b72560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fb ff ff}
00a2h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00a4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a7h call 7ff7c6b72550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fb ff ff}
00ach jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b1h call 7ff7c6b725b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fb ff ff}
00b6h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
00b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bbh call 7ff7c6b72530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 fb ff ff}
00c0h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff7c6b725c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 fb ff ff}
00cah nop                                     ; NOP || o32 90 || encoded[1]{90}
00cbh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d3h ret                                     ; RET || C3 || encoded[1]{c3}
00d4h mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
00deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 42 33 5f}
00e3h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00e6h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00eah mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
00f4h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 c5 2d 5f}
00f9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00fch call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 9b ea ff}
0101h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0103h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
010dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 42 33 5f}
0112h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0115h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
011ah mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
0124h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 db 45 5f}
0129h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
012ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
012eh call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 96 ea ff}
0133h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0136h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0139h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
013ch call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 16 82 ff}
0141h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0144h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0147h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ad 83 ff}
014ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
014fh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 8e 2a 5f}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0157h add [rsi],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 36}
0159h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
015bh add [7ff778b72a91h],bh                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 3d 00 00 00 b2}
0161h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0163h add [rcx],bh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 79 00}
0166h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0168h sahf                                    ; SAHF || 9E || encoded[1]{9e}
0169h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
016bh add [rbx],bh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 7b 00}
016eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0170h add gs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{65 00 00}
0173h add [rcx],dl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 51 00}
0176h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0178h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0179h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017bh add [rdi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 6f 00}
017eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0180h mov al,[rax]                            ; MOV r8, r/m8 || 8A /r || encoded[2]{8a 00}
0182h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0184h xchg esp,eax                            ; XCHG r32, EAX || o32 90+rd || encoded[1]{94}
0185h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0187h add [rax-58000000h],al                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 80 00 00 00 a8}
018dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
018fh add [rdi],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 47 00}
0192h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0194h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
