------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[8u]()[158] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 40 16 63 c7 f7 7f 00 00 48 b8 40 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 48 16 63 c7 f7 7f 00 00 48 b8 48 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 26 f5 ff ff 0f b6 58 08 48 8b ce 49 bb 50 16 63 c7 f7 7f 00 00 48 b8 50 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ff f4 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 e1 63 fa ff 40 0f b6 f0 48 b9 a0 4c ca c8 f7 7f 00 00 e8 9e bd b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 16 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7631640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 16 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7631648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 16 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7631648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 16 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ea3f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 f5 ff ff}
004ah movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7631650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 16 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7631650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 16 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86ea3f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f4 ff ff}
0071h movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c86912e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 63 fa ff}
007fh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0083h mov rcx,7ff7c8ca4ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 4c ca c8 f7 7f 00 00}
008dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e bd b7 5e}
0092h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0096h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[8i]()[159] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 58 16 63 c7 f7 7f 00 00 48 b8 58 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 60 16 63 c7 f7 7f 00 00 48 b8 60 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a6 f4 ff ff 48 0f be 58 08 48 8b ce 49 bb 68 16 63 c7 f7 7f 00 00 48 b8 68 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7e f4 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 f0 64 fa ff 48 0f be f0 48 b9 10 50 ca c8 f7 7f 00 00 e8 dd bc b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 16 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7631658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 16 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7631660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 16 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7631660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 16 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ea430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f4 ff ff}
004ah movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7631668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 16 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c7631668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 16 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c86ea430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f4 ff ff}
0072h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c86914b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 64 fa ff}
0080h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0084h mov rcx,7ff7c8ca5010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 50 ca c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd bc b7 5e}
0093h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[16u]()[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 70 16 63 c7 f7 7f 00 00 48 b8 70 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 78 16 63 c7 f7 7f 00 00 48 b8 78 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 06 f4 ff ff 0f b7 58 08 48 8b ce 49 bb 80 16 63 c7 f7 7f 00 00 48 b8 80 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 df f3 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 11 6a fa ff 0f b7 f0 48 b9 20 53 ca c8 f7 7f 00 00 e8 1f bc b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 16 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7631670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 16 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7631678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 16 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7631678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 16 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ea450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f4 ff ff}
004ah movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7631680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 16 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7631680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 16 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86ea450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f3 ff ff}
0071h movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c8691a90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 6a fa ff}
007fh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0082h mov rcx,7ff7c8ca5320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 53 ca c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f bc b7 5e}
0091h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[16i]()[159] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 88 16 63 c7 f7 7f 00 00 48 b8 88 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 90 16 63 c7 f7 7f 00 00 48 b8 90 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 66 f3 ff ff 48 0f bf 58 08 48 8b ce 49 bb 98 16 63 c7 f7 7f 00 00 48 b8 98 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 3e f3 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 20 6b fa ff 48 0f bf f0 48 b9 30 56 ca c8 f7 7f 00 00 e8 5d bb b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 16 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7631688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 16 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7631690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 16 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7631690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 16 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ea470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f3 ff ff}
004ah movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7631698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 16 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c7631698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 16 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c86ea470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f3 ff ff}
0072h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c8691c60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 6b fa ff}
0080h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0084h mov rcx,7ff7c8ca5630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 56 ca c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d bb b7 5e}
0093h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[32u]()[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a0 16 63 c7 f7 7f 00 00 48 b8 a0 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb a8 16 63 c7 f7 7f 00 00 48 b8 a8 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 f2 ff ff 8b 58 08 48 8b ce 49 bb b0 16 63 c7 f7 7f 00 00 48 b8 b0 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a0 f2 ff ff 44 8b 40 08 8b cf 8b d3 e8 33 6c fa ff 8b f0 48 b9 40 59 ca c8 f7 7f 00 00 e8 a2 ba b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76316a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 16 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c76316a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 16 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76316a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 16 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c76316a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 16 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ea490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f2 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c76316b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 16 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c76316b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 16 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c86ea490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 f2 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c8691e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 6c fa ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c8ca5940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 59 ca c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 ba b7 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[32i]()[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b8 16 63 c7 f7 7f 00 00 48 b8 b8 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb c0 16 63 c7 f7 7f 00 00 48 b8 c0 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 26 f2 ff ff 8b 58 08 48 8b ce 49 bb c8 16 63 c7 f7 7f 00 00 48 b8 c8 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 00 f2 ff ff 44 8b 40 08 8b cf 8b d3 e8 03 6d fa ff 8b f0 48 b9 50 5c ca c8 f7 7f 00 00 e8 e2 b9 b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76316b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 16 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c76316b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 16 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76316c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 16 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c76316c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 16 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ea4b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 f2 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c76316c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 16 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c76316c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 16 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c86ea4b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 f2 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c8691fc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 6d fa ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c8ca5c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 5c ca c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b9 b7 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g[64u]()[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb d0 16 63 c7 f7 7f 00 00 48 b8 d0 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb d8 16 63 c7 f7 7f 00 00 48 b8 d8 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 86 f1 ff ff 48 8b 58 08 48 8b ce 49 bb e0 16 63 c7 f7 7f 00 00 48 b8 e0 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5f f1 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 d1 6d fa ff 48 8b f0 48 b9 60 5f ca c8 f7 7f 00 00 e8 1f b9 b7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76316d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 16 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c76316d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 16 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76316d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 16 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c76316d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 16 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ea4d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f1 ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c76316e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 16 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c76316e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 16 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86ea4d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f1 ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c8692150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 6d fa ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c8ca5f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5f ca c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b9 b7 5e}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[64i]()[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e8 16 63 c7 f7 7f 00 00 48 b8 e8 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb f0 16 63 c7 f7 7f 00 00 48 b8 f0 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e6 f0 ff ff 48 8b 58 08 48 8b ce 49 bb f8 16 63 c7 f7 7f 00 00 48 b8 f8 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bf f0 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 c1 6e fa ff 48 8b f0 48 b9 70 62 ca c8 f7 7f 00 00 e8 5f b8 b7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76316e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 16 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c76316e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 16 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76316f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 16 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c76316f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 16 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ea4f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f0 ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c76316f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 16 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c76316f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 16 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86ea4f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf f0 ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c8692300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 6e fa ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c8ca6270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 62 ca c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f b8 b7 5e}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
