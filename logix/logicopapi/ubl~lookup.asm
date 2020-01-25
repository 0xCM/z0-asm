; UnaryOp<bit> lookup(UnaryBitLogicKind:byte kind)
; ubl~lookup[7ff7c6a13230h, 7ff7c6a133d6h][422] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 03 0f 87 28 01 00 00 8b c9 48 8d 05 7a 01 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 6f aa c6 f7 7f 00 00 e8 44 3a 49 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 2b 49 5f 48 b8 60 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 10 1a 70 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 20 6f aa c6 f7 7f 00 00 e8 00 3a 49 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 2b 49 5f 48 b8 60 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 00 1a 70 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 20 6f aa c6 f7 7f 00 00 e8 bc 39 49 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 2a 49 5f 48 b8 60 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 08 1a 70 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 20 6f aa c6 f7 7f 00 00 e8 78 39 49 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 2a 49 5f 48 b8 60 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 18 1a 70 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 e8 f9 91 c6 f7 7f 00 00 e8 34 39 49 5f 48 8b f8 40 88 77 08 48 b9 38 2a 5b c6 f7 7f 00 00 e8 1e 39 49 5f 48 8b f0 b9 58 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 07 d2 5b 5f 48 8b c8 48 8b d7 e8 7c 0d 98 ff 48 8b d0 48 8b ce e8 a1 a4 99 ff 48 8b ce e8 39 85 40 5f cc 25 00 00 00 69 00 00 00 ad 00 00 00 f1 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:36:120
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000ch cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
000fh ja near ptr 013dh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 28 01 00 00}
0015h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0017h lea rax,[7ff7c6a133c8h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 7a 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[7ff7c6a13238h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh mov rcx,7ff7c6aa6f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f aa c6 f7 7f 00 00}
0037h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 3a 49 5f}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 2b 49 5f}
004bh mov rax,7ff7c626d860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 d8 26 c6 f7 7f 00 00}
0055h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0059h mov rax,7ff7c6701a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1a 70 c6 f7 7f 00 00}
0063h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0067h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
0071h mov rcx,7ff7c6aa6f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f aa c6 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 3a 49 5f}
0080h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0083h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 2b 49 5f}
008fh mov rax,7ff7c626d860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 d8 26 c6 f7 7f 00 00}
0099h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
009dh mov rax,7ff7c6701a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1a 70 c6 f7 7f 00 00}
00a7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00abh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00aeh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b4h ret                                     ; RET || C3 || encoded[1]{c3}
00b5h mov rcx,7ff7c6aa6f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f aa c6 f7 7f 00 00}
00bfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 39 49 5f}
00c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00cbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00ceh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 2a 49 5f}
00d3h mov rax,7ff7c626d860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 d8 26 c6 f7 7f 00 00}
00ddh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00e1h mov rax,7ff7c6701a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1a 70 c6 f7 7f 00 00}
00ebh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00efh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00f2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00f6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f8h ret                                     ; RET || C3 || encoded[1]{c3}
00f9h mov rcx,7ff7c6aa6f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f aa c6 f7 7f 00 00}
0103h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 39 49 5f}
0108h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
010bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
010fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0112h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 2a 49 5f}
0117h mov rax,7ff7c626d860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 d8 26 c6 f7 7f 00 00}
0121h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0125h mov rax,7ff7c6701a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1a 70 c6 f7 7f 00 00}
012fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0133h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0136h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
013ch ret                                     ; RET || C3 || encoded[1]{c3}
013dh mov rcx,7ff7c691f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 91 c6 f7 7f 00 00}
0147h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 39 49 5f}
014ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
014fh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0153h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
015dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 39 49 5f}
0162h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0165h mov ecx,458h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 58 04 00 00}
016ah mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
0174h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 d2 5b 5f}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
017fh call 7ff7c6394130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 0d 98 ff}
0184h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0187h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
018ah call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 a4 99 ff}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 85 40 5f}
0197h int 3                                   ; INT3 || CC || encoded[1]{cc}
0198h and eax,69000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 69}
019dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
019fh add [rbp-0f000000h],ch                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 ad 00 00 00 f1}
01a5h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
