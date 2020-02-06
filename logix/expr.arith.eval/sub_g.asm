------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> sub<byte>(IBinaryArithmeticOp<byte> expr)
; sub_g[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb e8 16 26 c6 f7 7f 00 00 39 09 ff 15 9a cc eb fe 48 8b c8 e8 22 df ff ff 40 0f b6 78 08 48 8b ce 49 bb f0 16 26 c6 f7 7f 00 00 39 09 ff 15 80 cc eb fe 48 8b c8 e8 00 df ff ff 0f b6 48 08 40 0f b6 c7 2b c1 40 0f b6 f0 48 b9 48 d1 96 c7 f7 7f 00 00 e8 1b 22 b0 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62616e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1143366h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a cc eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a2978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 df ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c62616f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 16 26 c6 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1143380h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 cc eb fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c73a2978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 df ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0052h movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0056h mov rcx,7ff7c796d148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d1 96 c7 f7 7f 00 00}
0060h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 22 b0 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> sub<sbyte>(IBinaryArithmeticOp<sbyte> expr)
; sub_g[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb f8 16 26 c6 f7 7f 00 00 39 09 ff 15 1a cc eb fe 48 8b c8 e8 d2 de ff ff 48 0f be 78 08 48 8b ce 49 bb 00 17 26 c6 f7 7f 00 00 39 09 ff 15 00 cc eb fe 48 8b c8 e8 b0 de ff ff 48 0f be 48 08 48 0f be c7 2b c1 48 0f be f0 48 b9 b8 d4 96 c7 f7 7f 00 00 e8 8a 21 b0 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c62616f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 16 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-11433e6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a cc eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a29b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 de ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c6261700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 17 26 c6 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1143400h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 cc eb fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c73a29b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 de ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0053h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0057h mov rcx,7ff7c796d4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d4 96 c7 f7 7f 00 00}
0061h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 21 b0 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> sub<ushort>(IBinaryArithmeticOp<ushort> expr)
; sub_g[109] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 08 17 26 c6 f7 7f 00 00 39 09 ff 15 8a c7 eb fe 48 8b c8 e8 52 da ff ff 0f b7 78 08 48 8b ce 49 bb 10 17 26 c6 f7 7f 00 00 39 09 ff 15 71 c7 eb fe 48 8b c8 e8 31 da ff ff 0f b7 48 08 0f b7 c7 2b c1 0f b7 f0 48 b9 c8 d7 96 c7 f7 7f 00 00 e8 ee 1c b0 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 17 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1143876h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a c7 eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a29d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 da ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c6261710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 17 26 c6 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-114388fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 c7 eb fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c73a29d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 da ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0050h movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0053h mov rcx,7ff7c796d7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d7 96 c7 f7 7f 00 00}
005dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 1c b0 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> sub<short>(IBinaryArithmeticOp<short> expr)
; sub_g[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 18 17 26 c6 f7 7f 00 00 39 09 ff 15 0a c7 eb fe 48 8b c8 e8 e2 d9 ff ff 48 0f bf 78 08 48 8b ce 49 bb 20 17 26 c6 f7 7f 00 00 39 09 ff 15 f0 c6 eb fe 48 8b c8 e8 c0 d9 ff ff 48 0f bf 48 08 48 0f bf c7 2b c1 48 0f bf f0 48 b9 d8 da 96 c7 f7 7f 00 00 e8 5a 1c b0 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 17 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-11438f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a c7 eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a29f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 d9 ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c6261720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 17 26 c6 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-1143910h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 c6 eb fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c73a29f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 d9 ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0053h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0057h mov rcx,7ff7c796dad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 da 96 c7 f7 7f 00 00}
0061h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 1c b0 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> sub<uint>(IBinaryArithmeticOp<uint> expr)
; sub_g[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 28 17 26 c6 f7 7f 00 00 39 09 ff 15 8a c6 eb fe 48 8b c8 e8 72 d9 ff ff 8b 78 08 48 8b ce 49 bb 30 17 26 c6 f7 7f 00 00 39 09 ff 15 72 c6 eb fe 48 8b c8 e8 52 d9 ff ff 8b 48 08 2b f9 48 b9 e8 dd 96 c7 f7 7f 00 00 e8 d6 1b b0 5e 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 17 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1143976h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a c6 eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a2a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 d9 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c6261730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 17 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-114398eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 c6 eb fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c73a2a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 d9 ff ff}
0046h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0049h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
004bh mov rcx,7ff7c796dde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 dd 96 c7 f7 7f 00 00}
0055h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 1b b0 5e}
005ah mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> sub<int>(IBinaryArithmeticOp<int> expr)
; sub_g[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 38 17 26 c6 f7 7f 00 00 39 09 ff 15 1a c6 eb fe 48 8b c8 e8 ea e3 ff ff 8b 78 08 48 8b ce 49 bb 40 17 26 c6 f7 7f 00 00 39 09 ff 15 02 c6 eb fe 48 8b c8 e8 ca e3 ff ff 8b 48 08 2b f9 48 b9 f8 e0 96 c7 f7 7f 00 00 e8 56 1b b0 5e 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 17 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-11439e6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a c6 eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a3510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea e3 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c6261740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 17 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-11439feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 c6 eb fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c73a3510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca e3 ff ff}
0046h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0049h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
004bh mov rcx,7ff7c796e0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e0 96 c7 f7 7f 00 00}
0055h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 1b b0 5e}
005ah mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> sub<ulong>(IBinaryArithmeticOp<ulong> expr)
; sub_g[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 48 17 26 c6 f7 7f 00 00 39 09 ff 15 aa c5 eb fe 48 8b c8 e8 8a e3 ff ff 48 8b 78 08 48 8b ce 49 bb 50 17 26 c6 f7 7f 00 00 39 09 ff 15 91 c5 eb fe 48 8b c8 e8 69 e3 ff ff 48 8b 48 08 48 2b f9 48 b9 08 e4 96 c7 f7 7f 00 00 e8 d3 1a b0 5e 48 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 17 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1143a56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa c5 eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a3530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a e3 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c6261750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 17 26 c6 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1143a6fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 c5 eb fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c73a3530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e3 ff ff}
0047h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
004bh sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
004eh mov rcx,7ff7c796e408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e4 96 c7 f7 7f 00 00}
0058h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 1a b0 5e}
005dh mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> sub<long>(IBinaryArithmeticOp<long> expr)
; sub_g[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 58 17 26 c6 f7 7f 00 00 39 09 ff 15 3a c5 eb fe 48 8b c8 e8 2a e3 ff ff 48 8b 78 08 48 8b ce 49 bb 60 17 26 c6 f7 7f 00 00 39 09 ff 15 21 c5 eb fe 48 8b c8 e8 09 e3 ff ff 48 8b 48 08 48 2b f9 48 b9 18 e7 96 c7 f7 7f 00 00 e8 53 1a b0 5e 48 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c6261758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 17 26 c6 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-1143ac6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a c5 eb fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c73a3550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a e3 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c6261760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 17 26 c6 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-1143adfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 c5 eb fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c73a3550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 e3 ff ff}
0047h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
004bh sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
004eh mov rcx,7ff7c796e718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e7 96 c7 f7 7f 00 00}
0058h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 1a b0 5e}
005dh mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
