------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr)
; add_g[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb a8 16 28 c6 f7 7f 00 00 39 09 ff 15 aa e1 ea fe 48 8b c8 e8 72 e1 ff ff 40 0f b6 78 08 48 8b ce 49 bb b0 16 28 c6 f7 7f 00 00 39 09 ff 15 90 e1 ea fe 48 8b c8 e8 50 e1 ff ff 0f b6 48 08 40 0f b6 c7 03 c8 40 0f b6 f1 48 b9 40 15 93 c7 f7 7f 00 00 e8 6b 37 ad 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62816a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 16 28 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1151e56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa e1 ea fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73d1678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e1 ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c62816b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 16 28 c6 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1151e70h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 e1 ea fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c73d1678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 e1 ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0052h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0056h mov rcx,7ff7c7931540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 15 93 c7 f7 7f 00 00}
0060h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 37 ad 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr)
; add_g[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb b8 16 28 c6 f7 7f 00 00 39 09 ff 15 2a e1 ea fe 48 8b c8 e8 22 e1 ff ff 48 0f be 78 08 48 8b ce 49 bb c0 16 28 c6 f7 7f 00 00 39 09 ff 15 10 e1 ea fe 48 8b c8 e8 00 e1 ff ff 48 0f be 48 08 48 0f be c7 03 c8 48 0f be f1 48 b9 b0 18 93 c7 f7 7f 00 00 e8 da 36 ad 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62816b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 16 28 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1151ed6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a e1 ea fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73d16b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 e1 ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c62816c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 16 28 c6 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1151ef0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 e1 ea fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c73d16b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 e1 ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0057h mov rcx,7ff7c79318b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 18 93 c7 f7 7f 00 00}
0061h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 36 ad 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr)
; add_g[109] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb c8 16 28 c6 f7 7f 00 00 39 09 ff 15 aa e0 ea fe 48 8b c8 e8 b2 e0 ff ff 0f b7 78 08 48 8b ce 49 bb d0 16 28 c6 f7 7f 00 00 39 09 ff 15 91 e0 ea fe 48 8b c8 e8 91 e0 ff ff 0f b7 48 08 0f b7 c7 03 c8 0f b7 f1 48 b9 c0 1b 93 c7 f7 7f 00 00 e8 4e 36 ad 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62816c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 16 28 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1151f56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa e0 ea fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73d16d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 e0 ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c62816d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 16 28 c6 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1151f6fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 e0 ea fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c73d16d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e0 ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0050h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0053h mov rcx,7ff7c7931bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 1b 93 c7 f7 7f 00 00}
005dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 36 ad 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr)
; add_g[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb d8 16 28 c6 f7 7f 00 00 39 09 ff 15 2a e0 ea fe 48 8b c8 e8 42 e0 ff ff 48 0f bf 78 08 48 8b ce 49 bb e0 16 28 c6 f7 7f 00 00 39 09 ff 15 10 e0 ea fe 48 8b c8 e8 20 e0 ff ff 48 0f bf 48 08 48 0f bf c7 03 c8 48 0f bf f1 48 b9 d0 1e 93 c7 f7 7f 00 00 e8 ba 35 ad 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62816d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 16 28 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1151fd6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a e0 ea fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73d16f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 e0 ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c62816e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 16 28 c6 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1151ff0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 e0 ea fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c73d16f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 e0 ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0057h mov rcx,7ff7c7931ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 1e 93 c7 f7 7f 00 00}
0061h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 35 ad 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr)
; add_g[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb e8 16 28 c6 f7 7f 00 00 39 09 ff 15 aa df ea fe 48 8b c8 e8 22 ec ff ff 8b 78 08 48 8b ce 49 bb f0 16 28 c6 f7 7f 00 00 39 09 ff 15 92 df ea fe 48 8b c8 e8 02 ec ff ff 8b 70 08 03 f7 48 b9 e0 21 93 c7 f7 7f 00 00 e8 36 35 ad 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62816e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 16 28 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1152056h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa df ea fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73d2368h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 ec ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c62816f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 16 28 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-115206eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 df ea fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c73d2368h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 ec ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c79321e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 21 93 c7 f7 7f 00 00}
0055h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 35 ad 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr)
; add_g[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb f8 16 28 c6 f7 7f 00 00 39 09 ff 15 3a df ea fe 48 8b c8 e8 c2 eb ff ff 8b 78 08 48 8b ce 49 bb 00 17 28 c6 f7 7f 00 00 39 09 ff 15 22 df ea fe 48 8b c8 e8 a2 eb ff ff 8b 70 08 03 f7 48 b9 f0 24 93 c7 f7 7f 00 00 e8 b6 34 ad 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62816f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 16 28 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-11520c6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a df ea fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73d2388h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 eb ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c6281700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 17 28 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-11520deh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 df ea fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c73d2388h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 eb ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c79324f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 24 93 c7 f7 7f 00 00}
0055h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 34 ad 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr)
; add_g[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 08 17 28 c6 f7 7f 00 00 39 09 ff 15 ca de ea fe 48 8b c8 e8 62 eb ff ff 48 8b 78 08 48 8b ce 49 bb 10 17 28 c6 f7 7f 00 00 39 09 ff 15 b1 de ea fe 48 8b c8 e8 41 eb ff ff 48 8b 70 08 48 03 f7 48 b9 00 28 93 c7 f7 7f 00 00 e8 33 34 ad 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6281708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 17 28 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1152136h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca de ea fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73d23a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 eb ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c6281710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 17 28 c6 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-115214fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 de ea fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c73d23a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 eb ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c7932800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 28 93 c7 f7 7f 00 00}
0058h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 34 ad 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr)
; add_g[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 18 17 28 c6 f7 7f 00 00 39 09 ff 15 5a de ea fe 48 8b c8 e8 02 eb ff ff 48 8b 78 08 48 8b ce 49 bb 20 17 28 c6 f7 7f 00 00 39 09 ff 15 41 de ea fe 48 8b c8 e8 e1 ea ff ff 48 8b 70 08 48 03 f7 48 b9 10 2b 93 c7 f7 7f 00 00 e8 b3 33 ad 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6281718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 17 28 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-11521a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a de ea fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73d23c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 eb ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c6281720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 17 28 c6 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-11521bfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 de ea fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c73d23c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ea ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c7932b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 2b 93 c7 f7 7f 00 00}
0058h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 33 ad 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
