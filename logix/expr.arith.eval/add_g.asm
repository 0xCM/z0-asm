------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr)
; add_g[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 68 16 26 c6 f7 7f 00 00 39 09 ff 15 5a d0 eb fe 48 8b c8 e8 62 e3 ff ff 40 0f b6 78 08 48 8b ce 49 bb 70 16 26 c6 f7 7f 00 00 39 09 ff 15 40 d0 eb fe 48 8b c8 e8 40 e3 ff ff 0f b6 48 08 40 0f b6 c7 03 c8 40 0f b6 f1 48 b9 48 d1 96 c7 f7 7f 00 00 e8 5b 26 b0 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1142fa6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a d0 eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a2978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 e3 ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c6261670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 16 26 c6 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1142fc0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 d0 eb fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c73a2978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 e3 ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0052h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0056h mov rcx,7ff7c796d148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d1 96 c7 f7 7f 00 00}
0060h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 26 b0 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr)
; add_g[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 78 16 26 c6 f7 7f 00 00 39 09 ff 15 da cf eb fe 48 8b c8 e8 12 e3 ff ff 48 0f be 78 08 48 8b ce 49 bb 80 16 26 c6 f7 7f 00 00 39 09 ff 15 c0 cf eb fe 48 8b c8 e8 f0 e2 ff ff 48 0f be 48 08 48 0f be c7 03 c8 48 0f be f1 48 b9 b8 d4 96 c7 f7 7f 00 00 e8 ca 25 b0 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1143026h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da cf eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a29b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 e3 ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c6261680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 16 26 c6 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1143040h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 cf eb fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c73a29b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 e2 ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0057h mov rcx,7ff7c796d4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d4 96 c7 f7 7f 00 00}
0061h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 25 b0 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr)
; add_g[109] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 88 16 26 c6 f7 7f 00 00 39 09 ff 15 5a cf eb fe 48 8b c8 e8 a2 e2 ff ff 0f b7 78 08 48 8b ce 49 bb 90 16 26 c6 f7 7f 00 00 39 09 ff 15 41 cf eb fe 48 8b c8 e8 81 e2 ff ff 0f b7 48 08 0f b7 c7 03 c8 0f b7 f1 48 b9 c8 d7 96 c7 f7 7f 00 00 e8 3e 25 b0 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-11430a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a cf eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a29d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 e2 ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c6261690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 16 26 c6 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-11430bfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 cf eb fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c73a29d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 e2 ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0050h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0053h mov rcx,7ff7c796d7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d7 96 c7 f7 7f 00 00}
005dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 25 b0 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr)
; add_g[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 98 16 26 c6 f7 7f 00 00 39 09 ff 15 da ce eb fe 48 8b c8 e8 32 e2 ff ff 48 0f bf 78 08 48 8b ce 49 bb a0 16 26 c6 f7 7f 00 00 39 09 ff 15 c0 ce eb fe 48 8b c8 e8 10 e2 ff ff 48 0f bf 48 08 48 0f bf c7 03 c8 48 0f bf f1 48 b9 d8 da 96 c7 f7 7f 00 00 e8 aa 24 b0 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1143126h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da ce eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a29f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 e2 ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c62616a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 16 26 c6 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1143140h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 ce eb fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c73a29f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 e2 ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0057h mov rcx,7ff7c796dad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 da 96 c7 f7 7f 00 00}
0061h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 24 b0 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr)
; add_g[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb a8 16 26 c6 f7 7f 00 00 39 09 ff 15 5a ce eb fe 48 8b c8 e8 c2 e1 ff ff 8b 78 08 48 8b ce 49 bb b0 16 26 c6 f7 7f 00 00 39 09 ff 15 42 ce eb fe 48 8b c8 e8 a2 e1 ff ff 8b 70 08 03 f7 48 b9 e8 dd 96 c7 f7 7f 00 00 e8 26 24 b0 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62616a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-11431a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a ce eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a2a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 e1 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c62616b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 16 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-11431beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 ce eb fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c73a2a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 e1 ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c796dde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 dd 96 c7 f7 7f 00 00}
0055h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 24 b0 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr)
; add_g[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb b8 16 26 c6 f7 7f 00 00 39 09 ff 15 ea cd eb fe 48 8b c8 e8 3a ec ff ff 8b 78 08 48 8b ce 49 bb c0 16 26 c6 f7 7f 00 00 39 09 ff 15 d2 cd eb fe 48 8b c8 e8 1a ec ff ff 8b 70 08 03 f7 48 b9 f8 e0 96 c7 f7 7f 00 00 e8 a6 23 b0 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62616b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1143216h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea cd eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a3510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a ec ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c62616c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 16 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-114322eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 cd eb fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c73a3510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a ec ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c796e0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e0 96 c7 f7 7f 00 00}
0055h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 23 b0 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr)
; add_g[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb c8 16 26 c6 f7 7f 00 00 39 09 ff 15 7a cd eb fe 48 8b c8 e8 da eb ff ff 48 8b 78 08 48 8b ce 49 bb d0 16 26 c6 f7 7f 00 00 39 09 ff 15 61 cd eb fe 48 8b c8 e8 b9 eb ff ff 48 8b 70 08 48 03 f7 48 b9 08 e4 96 c7 f7 7f 00 00 e8 23 23 b0 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62616c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1143286h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a cd eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a3530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da eb ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c62616d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 16 26 c6 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-114329fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 cd eb fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c73a3530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 eb ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c796e408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e4 96 c7 f7 7f 00 00}
0058h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 23 b0 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr)
; add_g[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb d8 16 26 c6 f7 7f 00 00 39 09 ff 15 0a cd eb fe 48 8b c8 e8 7a eb ff ff 48 8b 78 08 48 8b ce 49 bb e0 16 26 c6 f7 7f 00 00 39 09 ff 15 f1 cc eb fe 48 8b c8 e8 59 eb ff ff 48 8b 70 08 48 03 f7 48 b9 18 e7 96 c7 f7 7f 00 00 e8 a3 22 b0 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62616d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-11432f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a cd eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a3550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a eb ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c62616e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 16 26 c6 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-114330fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 cc eb fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c73a3550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 eb ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c796e718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e7 96 c7 f7 7f 00 00}
0058h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 22 b0 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
