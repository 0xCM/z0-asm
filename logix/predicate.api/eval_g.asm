------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(ComparisonKind:byte kind, byte a, byte b)
; eval_g8u[165] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 8d 00 00 00 8b c0 48 8d 0d 07 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b6 d2 45 0f b6 c0 0f b6 c2 41 3b c0 0f 94 c0 0f b6 c0 eb 58 0f b6 c2 41 0f b6 d0 44 0f b6 c0 44 3b c2 0f 95 c0 0f b6 c0 eb 42 0f b6 c2 41 0f b6 d0 3b c2 0f 92 c0 0f b6 c0 eb 31 0f b6 c2 41 0f b6 d0 3b c2 0f 96 c0 0f b6 c0 eb 20 0f b6 c2 41 0f b6 d0 3b c2 0f 97 c0 0f b6 c0 eb 0f 0f b6 c2 41 0f b6 c8 3b c1 0f 93 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0012h ja near ptr 00a5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8d 00 00 00}
0018h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ah lea rcx,[rip+107h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 07 01 00 00}
0021h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0024h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002bh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002eh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0030h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0033h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0037h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
003ah cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
003dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0040h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0043h jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 58}
0045h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0048h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
004ch movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0050h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0053h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0056h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0059h jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 42}
005bh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
005eh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0062h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
006ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
006fh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0073h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0075h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0078h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007bh jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
007dh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0080h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0084h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0086h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0089h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
008ch jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
008eh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0091h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0095h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0097h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
009ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
; eval_g8u[172] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 94 00 00 00 8b c0 48 8d 0d 0f 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f be d2 4d 0f be c0 48 0f be c2 41 3b c0 0f 94 c0 0f b6 c0 eb 5d 48 0f be c2 49 0f be d0 4c 0f be c0 44 3b c2 0f 95 c0 0f b6 c0 eb 46 48 0f be c2 49 0f be d0 3b c2 0f 9c c0 0f b6 c0 eb 34 48 0f be c2 49 0f be d0 3b c2 0f 9e c0 0f b6 c0 eb 22 48 0f be c2 49 0f be d0 3b c2 0f 9f c0 0f b6 c0 eb 10 48 0f be c2 49 0f be c8 3b c1 0f 9d c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0012h ja near ptr 00ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 94 00 00 00}
0018h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ah lea rcx,[rip+10fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 0f 01 00 00}
0021h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0024h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002bh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002eh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0030h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0034h movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
0038h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
003ch cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
003fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0042h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0045h jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
0047h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
004bh movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
004fh movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0053h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0056h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0059h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ch jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
005eh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0062h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0066h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0068h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
006bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006eh jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0070h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0074h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0078h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
007ah setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
007dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0080h jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0082h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0086h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
008ah cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
008ch setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
008fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0092h jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
0094h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0098h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
009ch cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
009eh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00a1h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a4h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00a8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(ComparisonKind:byte kind, ushort a, ushort b)
; eval_g8u[165] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 8d 00 00 00 8b c0 48 8d 0d 07 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b7 d2 45 0f b7 c0 0f b7 c2 41 3b c0 0f 94 c0 0f b6 c0 eb 58 0f b7 c2 41 0f b7 d0 44 0f b7 c0 44 3b c2 0f 95 c0 0f b6 c0 eb 42 0f b7 c2 41 0f b7 d0 3b c2 0f 92 c0 0f b6 c0 eb 31 0f b7 c2 41 0f b7 d0 3b c2 0f 96 c0 0f b6 c0 eb 20 0f b7 c2 41 0f b7 d0 3b c2 0f 97 c0 0f b6 c0 eb 0f 0f b7 c2 41 0f b7 c8 3b c1 0f 93 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0012h ja near ptr 00a5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8d 00 00 00}
0018h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ah lea rcx,[rip+107h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 07 01 00 00}
0021h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0024h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002bh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002eh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0030h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0033h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0037h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
003ah cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
003dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0040h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0043h jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 58}
0045h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0048h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
004ch movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
0050h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0053h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0056h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0059h jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 42}
005bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
005eh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0062h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
006ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
006fh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0073h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0075h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0078h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007bh jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
007dh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0080h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0084h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0086h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0089h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
008ch jmp short 009dh                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
008eh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0091h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0095h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0097h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
009ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(ComparisonKind:byte kind, short a, short b)
; eval_g8u[172] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 94 00 00 00 8b c0 48 8d 0d 0f 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f bf d2 4d 0f bf c0 48 0f bf c2 41 3b c0 0f 94 c0 0f b6 c0 eb 5d 48 0f bf c2 49 0f bf d0 4c 0f bf c0 44 3b c2 0f 95 c0 0f b6 c0 eb 46 48 0f bf c2 49 0f bf d0 3b c2 0f 9c c0 0f b6 c0 eb 34 48 0f bf c2 49 0f bf d0 3b c2 0f 9e c0 0f b6 c0 eb 22 48 0f bf c2 49 0f bf d0 3b c2 0f 9f c0 0f b6 c0 eb 10 48 0f bf c2 49 0f bf c8 3b c1 0f 9d c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0012h ja near ptr 00ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 94 00 00 00}
0018h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001ah lea rcx,[rip+10fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 0f 01 00 00}
0021h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0024h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002bh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002eh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0030h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0034h movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
0038h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
003ch cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
003fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0042h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0045h jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
0047h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
004bh movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
004fh movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
0053h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0056h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0059h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ch jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
005eh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0062h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0066h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0068h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
006bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006eh jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0070h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0074h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0078h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
007ah setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
007dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0080h jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0082h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0086h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
008ah cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
008ch setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
008fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0092h jmp short 00a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
0094h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0098h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
009ch cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
009eh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00a1h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a4h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00a8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(ComparisonKind:byte kind, uint a, uint b)
; eval_g8u[116] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 60 8b c0 48 8d 0d db 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c0 0f b6 c0 eb 35 41 3b d0 0f 95 c0 0f b6 c0 eb 2a 41 3b d0 0f 92 c0 0f b6 c0 eb 1f 41 3b d0 0f 96 c0 0f b6 c0 eb 14 41 3b d0 0f 97 c0 0f b6 c0 eb 09 41 3b d0 0f 93 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0012h ja short 0074h                          ; JA rel8 || 77 cb || encoded[2]{77 60}
0014h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0016h lea rcx,[rip+0dbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d db 00 00 00}
001dh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0020h lea r9,[rip-1eh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e2 ff ff ff}
0027h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002ah jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002ch cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0032h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0035h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
0037h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
003ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0040h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0042h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0045h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0048h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004bh jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
004dh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0050h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0053h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0056h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 14}
0058h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
005bh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
005eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0061h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0063h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0066h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0069h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0070h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(ComparisonKind:byte kind, int a, int b)
; eval_g8u[116] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 60 8b c0 48 8d 0d db 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c0 0f b6 c0 eb 35 41 3b d0 0f 95 c0 0f b6 c0 eb 2a 41 3b d0 0f 9c c0 0f b6 c0 eb 1f 41 3b d0 0f 9e c0 0f b6 c0 eb 14 41 3b d0 0f 9f c0 0f b6 c0 eb 09 41 3b d0 0f 9d c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0012h ja short 0074h                          ; JA rel8 || 77 cb || encoded[2]{77 60}
0014h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0016h lea rcx,[rip+0dbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d db 00 00 00}
001dh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0020h lea r9,[rip-1eh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e2 ff ff ff}
0027h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002ah jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002ch cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0032h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0035h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
0037h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
003ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0040h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0042h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0045h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0048h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004bh jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
004dh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0050h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0053h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0056h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 14}
0058h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
005bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
005eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0061h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0063h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0066h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0069h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0070h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ulong>(ComparisonKind:byte kind, ulong a, ulong b)
; eval_g8u[116] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 60 8b c0 48 8d 0d db 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c0 0f b6 c0 eb 35 49 3b d0 0f 95 c0 0f b6 c0 eb 2a 49 3b d0 0f 92 c0 0f b6 c0 eb 1f 49 3b d0 0f 96 c0 0f b6 c0 eb 14 49 3b d0 0f 97 c0 0f b6 c0 eb 09 49 3b d0 0f 93 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0012h ja short 0074h                          ; JA rel8 || 77 cb || encoded[2]{77 60}
0014h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0016h lea rcx,[rip+0dbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d db 00 00 00}
001dh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0020h lea r9,[rip-1eh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e2 ff ff ff}
0027h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002ah jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002ch cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
002fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0032h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0035h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
0037h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
003ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0040h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0042h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0045h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0048h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004bh jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
004dh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0050h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0053h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0056h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 14}
0058h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
005bh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
005eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0061h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0063h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0066h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0069h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0070h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(ComparisonKind:byte kind, long a, long b)
; eval_g8u[116] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 60 8b c0 48 8d 0d db 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c0 0f b6 c0 eb 35 49 3b d0 0f 95 c0 0f b6 c0 eb 2a 49 3b d0 0f 9c c0 0f b6 c0 eb 1f 49 3b d0 0f 9e c0 0f b6 c0 eb 14 49 3b d0 0f 9f c0 0f b6 c0 eb 09 49 3b d0 0f 9d c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000fh cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0012h ja short 0074h                          ; JA rel8 || 77 cb || encoded[2]{77 60}
0014h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0016h lea rcx,[rip+0dbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d db 00 00 00}
001dh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0020h lea r9,[rip-1eh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e2 ff ff ff}
0027h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002ah jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002ch cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
002fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0032h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0035h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
0037h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
003ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0040h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0042h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0045h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0048h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004bh jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
004dh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0050h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0053h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0056h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 14}
0058h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
005bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
005eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0061h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0063h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0066h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0069h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0070h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
