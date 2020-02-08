------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[158] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 18 13 61 c7 f7 7f 00 00 48 b8 18 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 20 13 61 c7 f7 7f 00 00 48 b8 20 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ce f7 ff ff 0f b6 58 08 48 8b ce 49 bb 28 13 61 c7 f7 7f 00 00 48 b8 28 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a7 f7 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 71 80 fa ff 40 0f b6 f0 48 b9 b8 84 c5 c8 f7 7f 00 00 e8 de 87 b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 13 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 13 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 13 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 13 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86edc58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f7 ff ff}
004ah movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7611328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 13 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c7611328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 13 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86edc58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f7 ff ff}
0071h movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c8696530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 80 fa ff}
007fh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0083h mov rcx,7ff7c8c584b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 84 c5 c8 f7 7f 00 00}
008dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 87 b7 5e}
0092h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0096h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[159] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 30 13 61 c7 f7 7f 00 00 48 b8 30 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 38 13 61 c7 f7 7f 00 00 48 b8 38 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 26 fb ff ff 48 0f be 58 08 48 8b ce 49 bb 40 13 61 c7 f7 7f 00 00 48 b8 40 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 fe fa ff ff 4c 0f be 40 08 8b cf 8b d3 e8 80 81 fa ff 48 0f be f0 48 b9 28 88 c5 c8 f7 7f 00 00 e8 1d 87 b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 13 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 13 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 13 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 13 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ee070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 fb ff ff}
004ah movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7611340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 13 61 c7 f7 7f 00 00}
005ch mov rax,7ff7c7611340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 13 61 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c86ee070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fa ff ff}
0072h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c8696700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 81 fa ff}
0080h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0084h mov rcx,7ff7c8c58828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 88 c5 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 87 b7 5e}
0093h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 48 13 61 c7 f7 7f 00 00 48 b8 48 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 50 13 61 c7 f7 7f 00 00 48 b8 50 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 76 fa ff ff 0f b7 58 08 48 8b ce 49 bb 58 13 61 c7 f7 7f 00 00 48 b8 58 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4f fa ff ff 44 0f b7 40 08 8b cf 8b d3 e8 a1 86 fa ff 0f b7 f0 48 b9 38 8b c5 c8 f7 7f 00 00 e8 5f 86 b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 13 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 13 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 13 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 13 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ee080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fa ff ff}
004ah movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7611358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 13 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c7611358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 13 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86ee080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f fa ff ff}
0071h movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c8696ce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 86 fa ff}
007fh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0082h mov rcx,7ff7c8c58b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 8b c5 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 86 b7 5e}
0091h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[159] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 60 13 61 c7 f7 7f 00 00 48 b8 60 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 68 13 61 c7 f7 7f 00 00 48 b8 68 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 f9 ff ff 48 0f bf 58 08 48 8b ce 49 bb 70 13 61 c7 f7 7f 00 00 48 b8 70 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9e f9 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 b0 87 fa ff 48 0f bf f0 48 b9 48 8e c5 c8 f7 7f 00 00 e8 9d 85 b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 13 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 13 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 13 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 13 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ee090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f9 ff ff}
004ah movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7611370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 13 61 c7 f7 7f 00 00}
005ch mov rax,7ff7c7611370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 13 61 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c86ee090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f9 ff ff}
0072h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c8696eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 87 fa ff}
0080h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0084h mov rcx,7ff7c8c58e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 8e c5 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 85 b7 5e}
0093h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 78 13 61 c7 f7 7f 00 00 48 b8 78 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 80 13 61 c7 f7 7f 00 00 48 b8 80 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 f9 ff ff 8b 58 08 48 8b ce 49 bb 88 13 61 c7 f7 7f 00 00 48 b8 88 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f0 f8 ff ff 44 8b 40 08 8b cf 8b d3 e8 c3 88 fa ff 8b f0 48 b9 58 91 c5 c8 f7 7f 00 00 e8 e2 84 b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 13 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 13 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 13 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 13 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ee0a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 f9 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7611388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 13 61 c7 f7 7f 00 00}
005ah mov rax,7ff7c7611388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 13 61 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c86ee0a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 f8 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c8697080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 88 fa ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c8c59158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 91 c5 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 84 b7 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 90 13 61 c7 f7 7f 00 00 48 b8 90 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 98 13 61 c7 f7 7f 00 00 48 b8 98 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 66 f8 ff ff 8b 58 08 48 8b ce 49 bb a0 13 61 c7 f7 7f 00 00 48 b8 a0 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 40 f8 ff ff 44 8b 40 08 8b cf 8b d3 e8 93 89 fa ff 8b f0 48 b9 68 94 c5 c8 f7 7f 00 00 e8 22 84 b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 13 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 13 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 13 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 13 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ee0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f8 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c76113a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 13 61 c7 f7 7f 00 00}
005ah mov rax,7ff7c76113a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 13 61 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c86ee0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f8 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c8697210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 89 fa ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c8c59468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 94 c5 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 84 b7 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a8 13 61 c7 f7 7f 00 00 48 b8 a8 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb b0 13 61 c7 f7 7f 00 00 48 b8 b0 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b6 f7 ff ff 48 8b 58 08 48 8b ce 49 bb b8 13 61 c7 f7 7f 00 00 48 b8 b8 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8f f7 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 11 8c fa ff 48 8b f0 48 b9 88 9a c5 c8 f7 7f 00 00 e8 5f 83 b7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76113a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 13 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c76113a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 13 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76113b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 13 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c76113b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 13 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ee0c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 f7 ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c76113b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 13 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c76113b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 13 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86ee0c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f f7 ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c8697550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 8c fa ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c8c59a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9a c5 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 83 b7 5e}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb c0 13 61 c7 f7 7f 00 00 48 b8 c0 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb c8 13 61 c7 f7 7f 00 00 48 b8 c8 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 ce ff ff c5 f9 10 70 08 48 8b ce 49 bb d0 13 61 c7 f7 7f 00 00 48 b8 d0 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9e ce ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 8f 8c fc ff 48 b9 50 b3 c5 c8 f7 7f 00 00 e8 80 82 b7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c76113c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 13 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c76113c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 13 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c76113c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 13 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c76113c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 13 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86eb898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ce ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c76113d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 13 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c76113d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 13 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c86eb898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ce ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c86b76b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 8c fc ff}
00a1h mov rcx,7ff7c8c5b350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b3 c5 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 82 b7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb d8 13 61 c7 f7 7f 00 00 48 b8 d8 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb e0 13 61 c7 f7 7f 00 00 48 b8 e0 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 06 ce ff ff c5 f9 10 70 08 48 8b ce 49 bb e8 13 61 c7 f7 7f 00 00 48 b8 e8 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 de cd ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 1f 8d fc ff 48 b9 20 b8 c5 c8 f7 7f 00 00 e8 90 81 b7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c76113d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 13 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c76113d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 13 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c76113e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 13 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c76113e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 13 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86eb8c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ce ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c76113e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 13 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c76113e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 13 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c86eb8c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de cd ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c86b7830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 8d fc ff}
00a1h mov rcx,7ff7c8c5b820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b8 c5 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 81 b7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb f0 13 61 c7 f7 7f 00 00 48 b8 f0 13 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb f8 13 61 c7 f7 7f 00 00 48 b8 f8 13 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 36 cd ff ff c5 f9 10 70 08 48 8b ce 49 bb 00 14 61 c7 f7 7f 00 00 48 b8 00 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0e cd ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 6f 8d fc ff 48 b9 90 bc c5 c8 f7 7f 00 00 e8 a0 80 b7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c76113f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 13 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c76113f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 13 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c76113f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 13 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c76113f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 13 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86eb8e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 cd ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7611400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 14 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7611400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 14 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c86eb8e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e cd ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c86b7970h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 8d fc ff}
00a1h mov rcx,7ff7c8c5bc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bc c5 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 80 b7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 08 14 61 c7 f7 7f 00 00 48 b8 08 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 10 14 61 c7 f7 7f 00 00 48 b8 10 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 66 cc ff ff c5 f9 10 70 08 48 8b ce 49 bb 18 14 61 c7 f7 7f 00 00 48 b8 18 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 3e cc ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 ff 8d fc ff 48 b9 00 c1 c5 c8 f7 7f 00 00 e8 b0 7f b7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7611408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 14 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7611408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 14 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7611410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 14 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7611410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 14 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86eb908h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 cc ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7611418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 14 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7611418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 14 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c86eb908h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e cc ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c86b7af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 8d fc ff}
00a1h mov rcx,7ff7c8c5c100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c1 c5 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 7f b7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 20 14 61 c7 f7 7f 00 00 48 b8 20 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 28 14 61 c7 f7 7f 00 00 48 b8 28 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 96 cb ff ff c5 f9 10 70 08 48 8b ce 49 bb 30 14 61 c7 f7 7f 00 00 48 b8 30 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6e cb ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 4f 8e fc ff 48 b9 70 c5 c5 c8 f7 7f 00 00 e8 c0 7e b7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7611420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 14 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7611420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 14 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7611428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 14 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7611428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 14 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86eb928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 cb ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7611430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 14 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7611430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 14 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c86eb928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e cb ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c86b7c30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 8e fc ff}
00a1h mov rcx,7ff7c8c5c570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c5 c5 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 7e b7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 38 14 61 c7 f7 7f 00 00 48 b8 38 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 40 14 61 c7 f7 7f 00 00 48 b8 40 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 ca ff ff c5 f9 10 70 08 48 8b ce 49 bb 48 14 61 c7 f7 7f 00 00 48 b8 48 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9e ca ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 df 8e fc ff 48 b9 e0 c9 c5 c8 f7 7f 00 00 e8 d0 7d b7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7611438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 14 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7611438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 14 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7611440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 14 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7611440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 14 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86eb948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ca ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7611448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 14 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7611448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 14 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c86eb948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ca ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c86b7db0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 8e fc ff}
00a1h mov rcx,7ff7c8c5c9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c9 c5 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 7d b7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 50 14 61 c7 f7 7f 00 00 48 b8 50 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 58 14 61 c7 f7 7f 00 00 48 b8 58 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 86 ca ff ff c5 f9 10 70 08 48 8b ce 49 bb 60 14 61 c7 f7 7f 00 00 48 b8 60 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5e ca ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 ff 90 fc ff 48 b9 50 ce c5 c8 f7 7f 00 00 e8 e0 7c b7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7611450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 14 61 c7 f7 7f 00 00}
001fh mov rax,7ff7c7611450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 14 61 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7611458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 14 61 c7 f7 7f 00 00}
003ch mov rax,7ff7c7611458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 14 61 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c86eb9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ca ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7611460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 14 61 c7 f7 7f 00 00}
0064h mov rax,7ff7c7611460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 14 61 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c86eb9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e ca ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c86b80c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 90 fc ff}
00a1h mov rcx,7ff7c8c5ce50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ce c5 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 7c b7 5e}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr)
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 68 14 61 c7 f7 7f 00 00 48 b8 68 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 70 14 61 c7 f7 7f 00 00 48 b8 70 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 07 cd ff ff c5 fd 10 70 08 48 8b ce 49 bb 78 14 61 c7 f7 7f 00 00 48 b8 78 14 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 d9 cc ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 c4 98 fc ff 48 b9 d8 d8 c5 c8 f7 7f 00 00 e8 d5 7b b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7611468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 14 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7611468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 14 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7611470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 14 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7611470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 14 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c86ebd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 cd ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7611478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 14 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7611478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 14 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c86ebd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 cc ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c86b8990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 98 fc ff}
00bch mov rcx,7ff7c8c5d8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d8 c5 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 7b b7 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr)
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 80 14 61 c7 f7 7f 00 00 48 b8 80 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 88 14 61 c7 f7 7f 00 00 48 b8 88 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 cc ff ff c5 fd 10 70 08 48 8b ce 49 bb 90 14 61 c7 f7 7f 00 00 48 b8 90 14 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e9 cb ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 34 99 fc ff 48 b9 a8 dd c5 c8 f7 7f 00 00 e8 b5 7a b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7611480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 14 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7611480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 14 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7611488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 14 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7611488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 14 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c86ebda8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 cc ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7611490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 14 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7611490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 14 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c86ebda8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 cb ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c86b8b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 99 fc ff}
00bch mov rcx,7ff7c8c5dda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd c5 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 7a b7 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr)
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 98 14 61 c7 f7 7f 00 00 48 b8 98 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb a0 14 61 c7 f7 7f 00 00 48 b8 a0 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 cb ff ff c5 fd 10 70 08 48 8b ce 49 bb a8 14 61 c7 f7 7f 00 00 48 b8 a8 14 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e9 ca ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 64 99 fc ff 48 b9 18 e2 c5 c8 f7 7f 00 00 e8 95 79 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7611498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 14 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c7611498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 14 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c76114a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 14 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c76114a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 14 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c86ebdc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 cb ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c76114a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 14 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c76114a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 14 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c86ebdc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ca ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c86b8c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 99 fc ff}
00bch mov rcx,7ff7c8c5e218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e2 c5 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 79 b7 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr)
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb b0 14 61 c7 f7 7f 00 00 48 b8 b0 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb b8 14 61 c7 f7 7f 00 00 48 b8 b8 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 ca ff ff c5 fd 10 70 08 48 8b ce 49 bb c0 14 61 c7 f7 7f 00 00 48 b8 c0 14 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e9 c9 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 d4 99 fc ff 48 b9 88 e6 c5 c8 f7 7f 00 00 e8 75 78 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76114b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 14 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c76114b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 14 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c76114b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 14 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c76114b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 14 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c86ebde8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 ca ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c76114c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 14 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c76114c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 14 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c86ebde8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 c9 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c86b8e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 99 fc ff}
00bch mov rcx,7ff7c8c5e688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e6 c5 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 78 b7 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr)
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb c8 14 61 c7 f7 7f 00 00 48 b8 c8 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb d0 14 61 c7 f7 7f 00 00 48 b8 d0 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 c9 ff ff c5 fd 10 70 08 48 8b ce 49 bb d8 14 61 c7 f7 7f 00 00 48 b8 d8 14 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e9 c8 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 04 9a fc ff 48 b9 f8 ea c5 c8 f7 7f 00 00 e8 55 77 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76114c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 14 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c76114c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 14 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c76114d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 14 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c76114d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 14 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c86ebe08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c9 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c76114d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 14 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c76114d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 14 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c86ebe08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 c8 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c86b8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 9a fc ff}
00bch mov rcx,7ff7c8c5eaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ea c5 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 77 b7 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr)
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb e0 14 61 c7 f7 7f 00 00 48 b8 e0 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb e8 14 61 c7 f7 7f 00 00 48 b8 e8 14 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 c8 ff ff c5 fd 10 70 08 48 8b ce 49 bb f0 14 61 c7 f7 7f 00 00 48 b8 f0 14 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e9 c7 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 74 9a fc ff 48 b9 68 ef c5 c8 f7 7f 00 00 e8 35 76 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76114e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 14 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c76114e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 14 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c76114e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 14 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c76114e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 14 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c86ebe28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c8 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c76114f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 14 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c76114f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 14 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c86ebe28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 c7 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c86b90e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 9a fc ff}
00bch mov rcx,7ff7c8c5ef68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ef c5 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 76 b7 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr)
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb f8 14 61 c7 f7 7f 00 00 48 b8 f8 14 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 00 15 61 c7 f7 7f 00 00 48 b8 00 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 97 c3 ff ff c5 fd 10 70 08 48 8b ce 49 bb 08 15 61 c7 f7 7f 00 00 48 b8 08 15 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 69 c3 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 34 9c fc ff 48 b9 d8 f3 c5 c8 f7 7f 00 00 e8 05 71 b7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76114f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 14 61 c7 f7 7f 00 00}
002eh mov rax,7ff7c76114f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 14 61 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7611500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 15 61 c7 f7 7f 00 00}
004bh mov rax,7ff7c7611500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 15 61 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c86ebed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 c3 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7611508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 15 61 c7 f7 7f 00 00}
0073h mov rax,7ff7c7611508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 15 61 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c86ebed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 c3 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c86b97d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 9c fc ff}
00bch mov rcx,7ff7c8c5f3d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f3 c5 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 71 b7 5e}
00cbh vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00d1h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00d6h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00dfh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00e8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ebh add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00f2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IExpr<byte> expr)
; eval_g[107] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 c8 06 c7 c8 f7 7f 00 00 e8 b6 60 b7 5e 48 85 c0 74 15 48 8b c8 48 b8 50 b3 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 48 8e 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8c706c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 06 c7 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 60 b7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c86eb350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 b3 6e c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c86e8e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 8e 6e c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
0055h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0057h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0059h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
005bh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
005dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
005fh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0061h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0063h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0065h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0067h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0069h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 80 0a c7 c8 f7 7f 00 00 e8 56 60 b7 5e 48 85 c0 74 15 48 8b c8 48 b8 a0 b3 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 e8 8e 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8c70a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 0a c7 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 60 b7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c86eb3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 b3 6e c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c86e8ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 8e 6e c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 d8 0d c7 c8 f7 7f 00 00 e8 f6 5f b7 5e 48 85 c0 74 15 48 8b c8 48 b8 e0 b3 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 78 8f 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8c70dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0d c7 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 5f b7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c86eb3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 b3 6e c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c86e8f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 8f 6e c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IExpr<short> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 30 11 c7 c8 f7 7f 00 00 e8 96 5f b7 5e 48 85 c0 74 15 48 8b c8 48 b8 20 b4 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 d8 9b 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8c71130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 11 c7 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 5f b7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c86eb420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 b4 6e c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c86e9bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 9b 6e c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IExpr<uint> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 88 14 c7 c8 f7 7f 00 00 e8 36 5f b7 5e 48 85 c0 74 15 48 8b c8 48 b8 a8 b6 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 68 9c 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8c71488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 14 c7 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 5f b7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c86eb6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 b6 6e c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c86e9c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 9c 6e c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IExpr<int> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 e0 17 c7 c8 f7 7f 00 00 e8 d6 5e b7 5e 48 85 c0 74 15 48 8b c8 48 b8 e8 b6 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 f8 9c 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8c717e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 17 c7 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 5e b7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c86eb6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 b6 6e c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c86e9cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 9c 6e c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IExpr<long> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 90 1e c7 c8 f7 7f 00 00 e8 76 5e b7 5e 48 85 c0 74 15 48 8b c8 48 b8 68 b7 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 18 9e 6e c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8c71e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 1e c7 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 5e b7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c86eb768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b7 6e c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c86e9e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 9e 6e c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 98 b8 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86eb898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 b8 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 c8 b8 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86eb8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 b8 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 e8 b8 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86eb8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 b8 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 08 b9 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86eb908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 b9 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 28 b9 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86eb928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 b9 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 48 b9 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86eb948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 b9 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 f8 b9 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86eb9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 b9 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 78 bd 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86ebd78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 bd 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 a8 bd 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86ebda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 bd 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 c8 bd 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86ebdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 bd 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 e8 bd 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86ebde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 bd 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 08 be 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86ebe08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 be 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 28 be 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86ebe28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 be 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 d8 be 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86ebed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 be 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
