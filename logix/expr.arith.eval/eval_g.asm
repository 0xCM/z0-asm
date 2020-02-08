------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[158] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 10 15 61 c7 f7 7f 00 00 48 b8 10 15 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 18 15 61 c7 f7 7f 00 00 48 b8 18 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6e f8 ff ff 0f b6 58 08 48 8b ce 49 bb 20 15 61 c7 f7 7f 00 00 48 b8 20 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 47 f8 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 71 63 fa ff 40 0f b6 f0 48 b9 b8 84 c5 c8 f7 7f 00 00 e8 de 6a b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 15 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 15 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 15 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 15 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86ef9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f8 ff ff}
004ah movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7611520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 15 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c7611520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 15 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86ef9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f8 ff ff}
0071h movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c8696530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 63 fa ff}
007fh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0083h mov rcx,7ff7c8c584b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 84 c5 c8 f7 7f 00 00}
008dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 6a b7 5e}
0092h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0096h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[159] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 28 15 61 c7 f7 7f 00 00 48 b8 28 15 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 30 15 61 c7 f7 7f 00 00 48 b8 30 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ee f7 ff ff 48 0f be 58 08 48 8b ce 49 bb 38 15 61 c7 f7 7f 00 00 48 b8 38 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 f7 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 80 64 fa ff 48 0f be f0 48 b9 28 88 c5 c8 f7 7f 00 00 e8 1d 6a b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 15 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 15 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 15 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 15 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86efa38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f7 ff ff}
004ah movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7611538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 15 61 c7 f7 7f 00 00}
005ch mov rax,7ff7c7611538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 15 61 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c86efa38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f7 ff ff}
0072h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c8696700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 64 fa ff}
0080h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0084h mov rcx,7ff7c8c58828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 88 c5 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 6a b7 5e}
0093h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 40 15 61 c7 f7 7f 00 00 48 b8 40 15 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 48 15 61 c7 f7 7f 00 00 48 b8 48 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4e f7 ff ff 0f b7 58 08 48 8b ce 49 bb 50 15 61 c7 f7 7f 00 00 48 b8 50 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 27 f7 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 a1 69 fa ff 0f b7 f0 48 b9 38 8b c5 c8 f7 7f 00 00 e8 5f 69 b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 15 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 15 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 15 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 15 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86efa58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f7 ff ff}
004ah movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7611550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 15 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c7611550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 15 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86efa58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f7 ff ff}
0071h movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c8696ce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 69 fa ff}
007fh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0082h mov rcx,7ff7c8c58b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 8b c5 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 69 b7 5e}
0091h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[159] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 58 15 61 c7 f7 7f 00 00 48 b8 58 15 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 60 15 61 c7 f7 7f 00 00 48 b8 60 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ae f6 ff ff 48 0f bf 58 08 48 8b ce 49 bb 68 15 61 c7 f7 7f 00 00 48 b8 68 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 86 f6 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 b0 6a fa ff 48 0f bf f0 48 b9 48 8e c5 c8 f7 7f 00 00 e8 9d 68 b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 15 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 15 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 15 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 15 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86efa78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae f6 ff ff}
004ah movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7611568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 15 61 c7 f7 7f 00 00}
005ch mov rax,7ff7c7611568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 15 61 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c86efa78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f6 ff ff}
0072h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c8696eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 6a fa ff}
0080h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0084h mov rcx,7ff7c8c58e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 8e c5 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 68 b7 5e}
0093h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 70 15 61 c7 f7 7f 00 00 48 b8 70 15 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 78 15 61 c7 f7 7f 00 00 48 b8 78 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0e f6 ff ff 8b 58 08 48 8b ce 49 bb 80 15 61 c7 f7 7f 00 00 48 b8 80 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e8 f5 ff ff 44 8b 40 08 8b cf 8b d3 e8 c3 6b fa ff 8b f0 48 b9 58 91 c5 c8 f7 7f 00 00 e8 e2 67 b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 15 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 15 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 15 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 15 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86efa98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e f6 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7611580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 15 61 c7 f7 7f 00 00}
005ah mov rax,7ff7c7611580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 15 61 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c86efa98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f5 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c8697080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 6b fa ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c8c59158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 91 c5 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 67 b7 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 88 15 61 c7 f7 7f 00 00 48 b8 88 15 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 90 15 61 c7 f7 7f 00 00 48 b8 90 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6e f5 ff ff 8b 58 08 48 8b ce 49 bb 98 15 61 c7 f7 7f 00 00 48 b8 98 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 48 f5 ff ff 44 8b 40 08 8b cf 8b d3 e8 93 6c fa ff 8b f0 48 b9 68 94 c5 c8 f7 7f 00 00 e8 22 67 b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7611588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 15 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c7611588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 15 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7611590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 15 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c7611590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 15 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86efab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f5 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7611598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 15 61 c7 f7 7f 00 00}
005ah mov rax,7ff7c7611598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 15 61 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c86efab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 f5 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c8697210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 6c fa ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c8c59468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 94 c5 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 67 b7 5e}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a0 15 61 c7 f7 7f 00 00 48 b8 a0 15 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb a8 15 61 c7 f7 7f 00 00 48 b8 a8 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 be fb ff ff 48 8b 58 08 48 8b ce 49 bb b0 15 61 c7 f7 7f 00 00 48 b8 b0 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 97 fb ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 61 69 fa ff 48 8b f0 48 b9 78 97 c5 c8 f7 7f 00 00 e8 5f 62 b7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76115a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 15 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c76115a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 15 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76115a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 15 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c76115a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 15 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86f05c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fb ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c76115b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 15 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c76115b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 15 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86f05c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 fb ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c86973a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 69 fa ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c8c59778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 97 c5 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 62 b7 5e}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b8 15 61 c7 f7 7f 00 00 48 b8 b8 15 61 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb c0 15 61 c7 f7 7f 00 00 48 b8 c0 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1e fb ff ff 48 8b 58 08 48 8b ce 49 bb c8 15 61 c7 f7 7f 00 00 48 b8 c8 15 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f7 fa ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 51 6a fa ff 48 8b f0 48 b9 88 9a c5 c8 f7 7f 00 00 e8 9f 61 b7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76115b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 15 61 c7 f7 7f 00 00}
0017h mov rax,7ff7c76115b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 15 61 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76115c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 15 61 c7 f7 7f 00 00}
0034h mov rax,7ff7c76115c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 15 61 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86f05e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e fb ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c76115c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 15 61 c7 f7 7f 00 00}
005bh mov rax,7ff7c76115c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 15 61 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86f05e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fa ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c8697550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 6a fa ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c8c59a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9a c5 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 61 b7 5e}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
