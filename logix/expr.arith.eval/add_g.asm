------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr)
; add_g[8u]()[124] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb e0 14 62 c7 f7 7f 00 00 48 b8 e0 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ac e2 ff ff 40 0f b6 78 08 48 8b ce 49 bb e8 14 62 c7 f7 7f 00 00 48 b8 e8 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 e2 ff ff 0f b6 48 08 40 0f b6 c7 03 c8 40 0f b6 f1 48 b9 80 1d c9 c8 f7 7f 00 00 e8 df de b6 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76214e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 14 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c76214e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 14 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f7038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac e2 ff ff}
002ch movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c76214e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 14 62 c7 f7 7f 00 00}
003eh mov rax,7ff7c76214e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 14 62 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c86f7038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 e2 ff ff}
0054h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
0058h movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
005ch add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005eh movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0062h mov rcx,7ff7c8c91d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 1d c9 c8 f7 7f 00 00}
006ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df de b6 5e}
0071h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0075h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr)
; add_g[8i]()[125] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb f0 14 62 c7 f7 7f 00 00 48 b8 f0 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4c e2 ff ff 48 0f be 78 08 48 8b ce 49 bb f8 14 62 c7 f7 7f 00 00 48 b8 f8 14 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 e2 ff ff 48 0f be 48 08 48 0f be c7 03 c8 48 0f be f1 48 b9 f0 20 c9 c8 f7 7f 00 00 e8 3e de b6 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c76214f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 14 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c76214f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 14 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f7078h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c e2 ff ff}
002ch movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c76214f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 14 62 c7 f7 7f 00 00}
003eh mov rax,7ff7c76214f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 14 62 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c86f7078h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 e2 ff ff}
0054h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
0059h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
005dh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005fh movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0063h mov rcx,7ff7c8c920f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 20 c9 c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e de b6 5e}
0072h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr)
; add_g[16u]()[121] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 00 15 62 c7 f7 7f 00 00 48 b8 00 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cc e1 ff ff 0f b7 78 08 48 8b ce 49 bb 08 15 62 c7 f7 7f 00 00 48 b8 08 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a5 e1 ff ff 0f b7 48 08 0f b7 c7 03 c8 0f b7 f1 48 b9 00 24 c9 c8 f7 7f 00 00 e8 a2 dd b6 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7621500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 15 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c7621500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 15 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f7098h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc e1 ff ff}
002ch movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7621508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 15 62 c7 f7 7f 00 00}
003dh mov rax,7ff7c7621508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 15 62 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c86f7098h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 e1 ff ff}
0053h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
0057h movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
005ah add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005ch movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
005fh mov rcx,7ff7c8c92400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 24 c9 c8 f7 7f 00 00}
0069h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 dd b6 5e}
006eh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0077h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0078h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr)
; add_g[16i]()[125] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 10 15 62 c7 f7 7f 00 00 48 b8 10 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4c e1 ff ff 48 0f bf 78 08 48 8b ce 49 bb 18 15 62 c7 f7 7f 00 00 48 b8 18 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 e1 ff ff 48 0f bf 48 08 48 0f bf c7 03 c8 48 0f bf f1 48 b9 10 27 c9 c8 f7 7f 00 00 e8 fe dc b6 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7621510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 15 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c7621510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 15 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f70b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c e1 ff ff}
002ch movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
0031h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0034h mov r11,7ff7c7621518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 15 62 c7 f7 7f 00 00}
003eh mov rax,7ff7c7621518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 15 62 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c86f70b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 e1 ff ff}
0054h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
0059h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
005dh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
005fh movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0063h mov rcx,7ff7c8c92710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 27 c9 c8 f7 7f 00 00}
006dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe dc b6 5e}
0072h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0076h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr)
; add_g[32u]()[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 20 15 62 c7 f7 7f 00 00 48 b8 20 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cc e0 ff ff 8b 78 08 48 8b ce 49 bb 28 15 62 c7 f7 7f 00 00 48 b8 28 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a6 e0 ff ff 8b 70 08 03 f7 48 b9 20 2a c9 c8 f7 7f 00 00 e8 6a dc b6 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7621520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 15 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c7621520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 15 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f70d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc e0 ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7621528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 15 62 c7 f7 7f 00 00}
003ch mov rax,7ff7c7621528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 15 62 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86f70d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 e0 ff ff}
0052h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0055h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0057h mov rcx,7ff7c8c92a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2a c9 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a dc b6 5e}
0066h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr)
; add_g[32i]()[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 30 15 62 c7 f7 7f 00 00 48 b8 30 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ac eb ff ff 8b 78 08 48 8b ce 49 bb 38 15 62 c7 f7 7f 00 00 48 b8 38 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 86 eb ff ff 8b 70 08 03 f7 48 b9 30 2d c9 c8 f7 7f 00 00 e8 da db b6 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7621530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 15 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c7621530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 15 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f7c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac eb ff ff}
002ch mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7621538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 15 62 c7 f7 7f 00 00}
003ch mov rax,7ff7c7621538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 15 62 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86f7c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 eb ff ff}
0052h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0055h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0057h mov rcx,7ff7c8c92d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 2d c9 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da db b6 5e}
0066h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr)
; add_g[64u]()[116] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 40 15 62 c7 f7 7f 00 00 48 b8 40 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 3c eb ff ff 48 8b 78 08 48 8b ce 49 bb 48 15 62 c7 f7 7f 00 00 48 b8 48 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 eb ff ff 48 8b 70 08 48 03 f7 48 b9 40 30 c9 c8 f7 7f 00 00 e8 47 db b6 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7621540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 15 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c7621540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 15 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f7c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c eb ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7621548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 15 62 c7 f7 7f 00 00}
003dh mov rax,7ff7c7621548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 15 62 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c86f7c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 eb ff ff}
0053h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
0057h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
005ah mov rcx,7ff7c8c93040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 30 c9 c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 db b6 5e}
0069h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr)
; add_g[64i]()[116] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 50 15 62 c7 f7 7f 00 00 48 b8 50 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cc ea ff ff 48 8b 78 08 48 8b ce 49 bb 58 15 62 c7 f7 7f 00 00 48 b8 58 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a5 ea ff ff 48 8b 70 08 48 03 f7 48 b9 50 33 c9 c8 f7 7f 00 00 e8 b7 da b6 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7621550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 15 62 c7 f7 7f 00 00}
0016h mov rax,7ff7c7621550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 15 62 c7 f7 7f 00 00}
0020h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0022h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0024h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0027h call 7ff7c86f7c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ea ff ff}
002ch mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
0030h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0033h mov r11,7ff7c7621558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 15 62 c7 f7 7f 00 00}
003dh mov rax,7ff7c7621558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 15 62 c7 f7 7f 00 00}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004eh call 7ff7c86f7c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ea ff ff}
0053h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
0057h add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
005ah mov rcx,7ff7c8c93350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 33 c9 c8 f7 7f 00 00}
0064h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 da b6 5e}
0069h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
