------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr)
; add_g[8u]()[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 10 16 63 c7 f7 7f 00 00 39 09 ff 15 02 3d f4 fe 48 8b c8 e8 8a e5 ff ff 40 0f b6 78 08 48 8b ce 49 bb 18 16 63 c7 f7 7f 00 00 39 09 ff 15 e8 3c f4 fe 48 8b c8 e8 68 e5 ff ff 0f b6 48 08 40 0f b6 c7 03 c8 40 0f b6 f1 48 b9 d8 0e cd c8 f7 7f 00 00 e8 5b 93 b7 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7631610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 16 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10bc2feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 3d f4 fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86ebea0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a e5 ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7631618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 16 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-10bc318h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 3c f4 fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c86ebea0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 e5 ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0052h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0056h mov rcx,7ff7c8cd0ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0e cd c8 f7 7f 00 00}
0060h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 93 b7 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr)
; add_g[8i]()[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 20 16 63 c7 f7 7f 00 00 39 09 ff 15 82 3c f4 fe 48 8b c8 e8 3a e5 ff ff 48 0f be 78 08 48 8b ce 49 bb 28 16 63 c7 f7 7f 00 00 39 09 ff 15 68 3c f4 fe 48 8b c8 e8 18 e5 ff ff 48 0f be 48 08 48 0f be c7 03 c8 48 0f be f1 48 b9 48 12 cd c8 f7 7f 00 00 e8 ca 92 b7 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7631620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 16 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10bc37eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 3c f4 fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86ebee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e5 ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7631628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 16 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-10bc398h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 68 3c f4 fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c86ebee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 e5 ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0057h mov rcx,7ff7c8cd1248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 12 cd c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 92 b7 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr)
; add_g[16u]()[109] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 30 16 63 c7 f7 7f 00 00 39 09 ff 15 f2 37 f4 fe 48 8b c8 e8 ba e0 ff ff 0f b7 78 08 48 8b ce 49 bb 38 16 63 c7 f7 7f 00 00 39 09 ff 15 d9 37 f4 fe 48 8b c8 e8 99 e0 ff ff 0f b7 48 08 0f b7 c7 03 c8 0f b7 f1 48 b9 58 15 cd c8 f7 7f 00 00 e8 2e 8e b7 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7631630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 16 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10bc80eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 37 f4 fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86ebf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba e0 ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7631638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 16 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-10bc827h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 37 f4 fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c86ebf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e0 ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0050h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0053h mov rcx,7ff7c8cd1558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 15 cd c8 f7 7f 00 00}
005dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 8e b7 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr)
; add_g[16i]()[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 40 16 63 c7 f7 7f 00 00 39 09 ff 15 72 37 f4 fe 48 8b c8 e8 4a e0 ff ff 48 0f bf 78 08 48 8b ce 49 bb 48 16 63 c7 f7 7f 00 00 39 09 ff 15 58 37 f4 fe 48 8b c8 e8 28 e0 ff ff 48 0f bf 48 08 48 0f bf c7 03 c8 48 0f bf f1 48 b9 68 18 cd c8 f7 7f 00 00 e8 9a 8d b7 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7631640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 16 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10bc88eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 37 f4 fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86ebf20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a e0 ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7631648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 16 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-10bc8a8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 37 f4 fe}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c86ebf20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 e0 ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0057h mov rcx,7ff7c8cd1868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 18 cd c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 8d b7 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr)
; add_g[32u]()[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 50 16 63 c7 f7 7f 00 00 39 09 ff 15 f2 36 f4 fe 48 8b c8 e8 da df ff ff 8b 78 08 48 8b ce 49 bb 58 16 63 c7 f7 7f 00 00 39 09 ff 15 da 36 f4 fe 48 8b c8 e8 ba df ff ff 8b 70 08 03 f7 48 b9 78 1b cd c8 f7 7f 00 00 e8 16 8d b7 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7631650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 16 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10bc90eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 36 f4 fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86ebf40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da df ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7631658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 16 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-10bc926h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da 36 f4 fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c86ebf40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba df ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c8cd1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b cd c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 8d b7 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr)
; add_g[32i]()[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 60 16 63 c7 f7 7f 00 00 39 09 ff 15 82 36 f4 fe 48 8b c8 e8 7a df ff ff 8b 78 08 48 8b ce 49 bb 68 16 63 c7 f7 7f 00 00 39 09 ff 15 6a 36 f4 fe 48 8b c8 e8 5a df ff ff 8b 70 08 03 f7 48 b9 88 1e cd c8 f7 7f 00 00 e8 96 8c b7 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7631660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 16 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10bc97eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 36 f4 fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86ebf60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a df ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7631668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 16 63 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-10bc996h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 36 f4 fe}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c86ebf60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a df ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c8cd1e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1e cd c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 8c b7 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr)
; add_g[64u]()[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 70 16 63 c7 f7 7f 00 00 39 09 ff 15 12 36 f4 fe 48 8b c8 e8 1a df ff ff 48 8b 78 08 48 8b ce 49 bb 78 16 63 c7 f7 7f 00 00 39 09 ff 15 f9 35 f4 fe 48 8b c8 e8 f9 de ff ff 48 8b 70 08 48 03 f7 48 b9 98 21 cd c8 f7 7f 00 00 e8 13 8c b7 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7631670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 16 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10bc9eeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 36 f4 fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86ebf80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a df ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7631678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 16 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-10bca07h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 35 f4 fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c86ebf80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 de ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c8cd2198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 21 cd c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 8c b7 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr)
; add_g[64i]()[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 80 16 63 c7 f7 7f 00 00 39 09 ff 15 a2 35 f4 fe 48 8b c8 e8 ba de ff ff 48 8b 78 08 48 8b ce 49 bb 88 16 63 c7 f7 7f 00 00 39 09 ff 15 89 35 f4 fe 48 8b c8 e8 99 de ff ff 48 8b 70 08 48 03 f7 48 b9 a8 24 cd c8 f7 7f 00 00 e8 93 8b b7 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7631680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 16 63 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-10bca5eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 35 f4 fe}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c86ebfa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba de ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7631688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 16 63 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-10bca77h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 35 f4 fe}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c86ebfa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 de ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c8cd24a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 24 cd c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 8b b7 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
