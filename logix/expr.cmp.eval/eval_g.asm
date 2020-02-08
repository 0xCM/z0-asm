------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[158] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 30 0e 63 c7 f7 7f 00 00 48 b8 30 0e 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 38 0e 63 c7 f7 7f 00 00 48 b8 38 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 06 fc ff ff 0f b6 58 08 48 8b ce 49 bb 40 0e 63 c7 f7 7f 00 00 48 b8 40 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 df fb ff ff 44 0f b6 40 08 8b cf 8b d3 e8 a1 82 e5 ff 40 0f b6 f0 48 b9 e0 a2 14 c8 f7 7f 00 00 e8 0e a4 1f 5f 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0e 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0e 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0e 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 0e 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c806c460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 fc ff ff}
004ah movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0e 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 0e 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c806c460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df fb ff ff}
0071h movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c7ec4b30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 82 e5 ff}
007fh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0083h mov rcx,7ff7c814a2e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a2 14 c8 f7 7f 00 00}
008dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e a4 1f 5f}
0092h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0096h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[159] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 48 0e 63 c7 f7 7f 00 00 48 b8 48 0e 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 50 0e 63 c7 f7 7f 00 00 48 b8 50 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 76 fb ff ff 48 0f be 58 08 48 8b ce 49 bb 58 0e 63 c7 f7 7f 00 00 48 b8 58 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4e fb ff ff 4c 0f be 40 08 8b cf 8b d3 e8 b0 87 e5 ff 48 0f be f0 48 b9 50 a6 14 c8 f7 7f 00 00 e8 4d a3 1f 5f 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0e 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 0e 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0e 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 0e 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c806c490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fb ff ff}
004ah movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7630e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0e 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c7630e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 0e 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c806c490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e fb ff ff}
0072h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c7ec5100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 87 e5 ff}
0080h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0084h mov rcx,7ff7c814a650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a6 14 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d a3 1f 5f}
0093h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 60 0e 63 c7 f7 7f 00 00 48 b8 60 0e 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 68 0e 63 c7 f7 7f 00 00 48 b8 68 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 fa ff ff 0f b7 58 08 48 8b ce 49 bb 70 0e 63 c7 f7 7f 00 00 48 b8 70 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9f fa ff ff 44 0f b7 40 08 8b cf 8b d3 e8 c1 88 e5 ff 0f b7 f0 48 b9 60 a9 14 c8 f7 7f 00 00 e8 8f a2 1f 5f 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0e 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 0e 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0e 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 0e 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c806c4a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 fa ff ff}
004ah movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0e 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 0e 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c806c4a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f fa ff ff}
0071h movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah call 7ff7c7ec52d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 88 e5 ff}
007fh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0082h mov rcx,7ff7c814a960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a9 14 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a2 1f 5f}
0091h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[159] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 78 0e 63 c7 f7 7f 00 00 48 b8 78 0e 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 80 0e 63 c7 f7 7f 00 00 48 b8 80 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 fa ff ff 48 0f bf 58 08 48 8b ce 49 bb 88 0e 63 c7 f7 7f 00 00 48 b8 88 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ee f9 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 d0 89 e5 ff 48 0f bf f0 48 b9 70 ac 14 c8 f7 7f 00 00 e8 cd a1 1f 5f 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0e 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 0e 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0e 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 0e 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c806c4b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 fa ff ff}
004ah movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7630e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0e 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c7630e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 0e 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c806c4b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f9 ff ff}
0072h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh call 7ff7c7ec54a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 89 e5 ff}
0080h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0084h mov rcx,7ff7c814ac70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ac 14 c8 f7 7f 00 00}
008eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd a1 1f 5f}
0093h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0097h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 90 0e 63 c7 f7 7f 00 00 48 b8 90 0e 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 98 0e 63 c7 f7 7f 00 00 48 b8 98 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 66 f9 ff ff 8b 58 08 48 8b ce 49 bb a0 0e 63 c7 f7 7f 00 00 48 b8 a0 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 40 f9 ff ff 44 8b 40 08 8b cf 8b d3 e8 f3 8e e5 ff 8b f0 48 b9 80 af 14 c8 f7 7f 00 00 e8 12 a1 1f 5f 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0e 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 0e 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0e 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0e 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c806c4c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f9 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7630ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0e 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c7630ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 0e 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c806c4c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f9 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c7ec5a80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 8e e5 ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c814af80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 af 14 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 a1 1f 5f}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a8 0e 63 c7 f7 7f 00 00 48 b8 a8 0e 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb b0 0e 63 c7 f7 7f 00 00 48 b8 b0 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b6 f8 ff ff 8b 58 08 48 8b ce 49 bb b8 0e 63 c7 f7 7f 00 00 48 b8 b8 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 90 f8 ff ff 44 8b 40 08 8b cf 8b d3 e8 c3 93 e5 ff 8b f0 48 b9 90 b2 14 c8 f7 7f 00 00 e8 52 a0 1f 5f 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0e 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0e 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0e 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 0e 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c806c4d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 f8 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c7630eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0e 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c7630eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 0e 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c806c4d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 f8 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h call 7ff7c7ec6010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 93 e5 ff}
007dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
007fh mov rcx,7ff7c814b290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b2 14 c8 f7 7f 00 00}
0089h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 a0 1f 5f}
008eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0091h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0095h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb c0 0e 63 c7 f7 7f 00 00 48 b8 c0 0e 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb c8 0e 63 c7 f7 7f 00 00 48 b8 c8 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 06 f8 ff ff 48 8b 58 08 48 8b ce 49 bb d0 0e 63 c7 f7 7f 00 00 48 b8 d0 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 df f7 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 41 9a e5 ff 48 8b f0 48 b9 b0 b8 14 c8 f7 7f 00 00 e8 8f 9f 1f 5f 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7630ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0e 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7630ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 0e 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7630ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0e 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7630ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 0e 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c806c4e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f8 ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7630ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0e 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7630ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0e 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c806c4e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f7 ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah call 7ff7c7ec6750h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 9a e5 ff}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h mov rcx,7ff7c814b8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 b8 14 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 9f 1f 5f}
0091h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0095h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb d8 0e 63 c7 f7 7f 00 00 48 b8 d8 0e 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb e0 0e 63 c7 f7 7f 00 00 48 b8 e0 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 cf ff ff c5 f9 10 70 08 48 8b ce 49 bb e8 0e 63 c7 f7 7f 00 00 48 b8 e8 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ee ce ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 5f e4 e7 ff 48 b9 78 d1 14 c8 f7 7f 00 00 e8 b0 9e 1f 5f c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0e 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0e 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0e 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0e 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c8069cb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 cf ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0e 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0e 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c8069cb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee ce ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c7eeb250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f e4 e7 ff}
00a1h mov rcx,7ff7c814d178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 14 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 9e 1f 5f}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb f0 0e 63 c7 f7 7f 00 00 48 b8 f0 0e 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb f8 0e 63 c7 f7 7f 00 00 48 b8 f8 0e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 56 ce ff ff c5 f9 10 70 08 48 8b ce 49 bb 00 0f 63 c7 f7 7f 00 00 48 b8 00 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2e ce ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 2f e5 e7 ff 48 b9 48 d6 14 c8 f7 7f 00 00 e8 c0 9d 1f 5f c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0e 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0e 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0e 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0e 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c8069ce8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 ce ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0f 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0f 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c8069ce8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e ce ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c7eeb410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f e5 e7 ff}
00a1h mov rcx,7ff7c814d648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d6 14 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 9d 1f 5f}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 08 0f 63 c7 f7 7f 00 00 48 b8 08 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 10 0f 63 c7 f7 7f 00 00 48 b8 10 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 86 cd ff ff c5 f9 10 70 08 48 8b ce 49 bb 18 0f 63 c7 f7 7f 00 00 48 b8 18 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5e cd ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 7f e5 e7 ff 48 b9 b8 da 14 c8 f7 7f 00 00 e8 d0 9c 1f 5f c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0f 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0f 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0f 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0f 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c8069d08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 cd ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0f 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 0f 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c8069d08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e cd ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c7eeb550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f e5 e7 ff}
00a1h mov rcx,7ff7c814dab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 da 14 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 9c 1f 5f}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 20 0f 63 c7 f7 7f 00 00 48 b8 20 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 28 0f 63 c7 f7 7f 00 00 48 b8 28 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b6 cc ff ff c5 f9 10 70 08 48 8b ce 49 bb 30 0f 63 c7 f7 7f 00 00 48 b8 30 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8e cc ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 1f ea e7 ff 48 b9 28 df 14 c8 f7 7f 00 00 e8 e0 9b 1f 5f c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0f 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0f 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0f 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 0f 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c8069d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 cc ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0f 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0f 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c8069d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e cc ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c7eebae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ea e7 ff}
00a1h mov rcx,7ff7c814df28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 14 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 9b 1f 5f}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 38 0f 63 c7 f7 7f 00 00 48 b8 38 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 40 0f 63 c7 f7 7f 00 00 48 b8 40 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 26 ce ff ff c5 f9 10 70 08 48 8b ce 49 bb 48 0f 63 c7 f7 7f 00 00 48 b8 48 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 fe cd ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 6f ea e7 ff 48 b9 98 e3 14 c8 f7 7f 00 00 e8 f0 9a 1f 5f c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0f 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 0f 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0f 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 0f 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c8069f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 ce ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0f 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 0f 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c8069f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe cd ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c7eebc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ea e7 ff}
00a1h mov rcx,7ff7c814e398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e3 14 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 9a 1f 5f}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 50 0f 63 c7 f7 7f 00 00 48 b8 50 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 58 0f 63 c7 f7 7f 00 00 48 b8 58 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 56 cd ff ff c5 f9 10 70 08 48 8b ce 49 bb 60 0f 63 c7 f7 7f 00 00 48 b8 60 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2e cd ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 ff ea e7 ff 48 b9 08 e8 14 c8 f7 7f 00 00 e8 00 9a 1f 5f c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0f 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 0f 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0f 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 0f 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c8069fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 cd ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0f 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 0f 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c8069fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e cd ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c7eebda0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ea e7 ff}
00a1h mov rcx,7ff7c814e808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e8 14 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 9a 1f 5f}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
; eval_g[200] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 68 0f 63 c7 f7 7f 00 00 48 b8 68 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 70 0f 63 c7 f7 7f 00 00 48 b8 70 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 cd ff ff c5 f9 10 70 08 48 8b ce 49 bb 78 0f 63 c7 f7 7f 00 00 48 b8 78 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ee cc ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 1f f3 e7 ff 48 b9 78 ec 14 c8 f7 7f 00 00 e8 10 99 1f 5f c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7630f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0f 63 c7 f7 7f 00 00}
001fh mov rax,7ff7c7630f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 0f 63 c7 f7 7f 00 00}
0029h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
002bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
002dh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
002fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0032h mov r11,7ff7c7630f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0f 63 c7 f7 7f 00 00}
003ch mov rax,7ff7c7630f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 0f 63 c7 f7 7f 00 00}
0046h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0048h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff7c806a058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 cd ff ff}
0052h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0057h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005ah mov r11,7ff7c7630f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0f 63 c7 f7 7f 00 00}
0064h mov rax,7ff7c7630f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 0f 63 c7 f7 7f 00 00}
006eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0070h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0072h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0075h call 7ff7c806a058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee cc ff ff}
007ah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
007fh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0084h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0086h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
008ch vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0092h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0097h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
009ch call 7ff7c7eec6b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f f3 e7 ff}
00a1h mov rcx,7ff7c814ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 14 c8 f7 7f 00 00}
00abh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 99 1f 5f}
00b0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00b6h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00bbh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00c1h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr)
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 80 0f 63 c7 f7 7f 00 00 48 b8 80 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 88 0f 63 c7 f7 7f 00 00 48 b8 88 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 c9 ff ff c5 fd 10 70 08 48 8b ce 49 bb 90 0f 63 c7 f7 7f 00 00 48 b8 90 0f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e9 c8 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 84 03 e8 ff 48 b9 00 f7 14 c8 f7 7f 00 00 e8 f5 93 1f 5f c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0f 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 0f 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0f 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 0f 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c806a168h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c9 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0f 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 0f 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c806a168h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 c8 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c7eedc30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 03 e8 ff}
00bch mov rcx,7ff7c814f700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f7 14 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 93 1f 5f}
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
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 98 0f 63 c7 f7 7f 00 00 48 b8 98 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb a0 0f 63 c7 f7 7f 00 00 48 b8 a0 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 27 c8 ff ff c5 fd 10 70 08 48 8b ce 49 bb a8 0f 63 c7 f7 7f 00 00 48 b8 a8 0f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 f9 c7 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 f4 03 e8 ff 48 b9 d0 fb 14 c8 f7 7f 00 00 e8 d5 92 1f 5f c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0f 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0f 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0f 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 0f 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c806a198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c8 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0f 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0f 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c806a198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c7 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c7eeddc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 03 e8 ff}
00bch mov rcx,7ff7c814fbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fb 14 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 92 1f 5f}
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
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb b0 0f 63 c7 f7 7f 00 00 48 b8 b0 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb b8 0f 63 c7 f7 7f 00 00 48 b8 b8 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 27 c7 ff ff c5 fd 10 70 08 48 8b ce 49 bb c0 0f 63 c7 f7 7f 00 00 48 b8 c0 0f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 f9 c6 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 94 29 fc ff 48 b9 98 00 16 c8 f7 7f 00 00 e8 b5 91 1f 5f c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0f 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 0f 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0f 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 0f 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c806a1b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c7 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0f 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 0f 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c806a1b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c6 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8030480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 29 fc ff}
00bch mov rcx,7ff7c8160098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 00 16 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 91 1f 5f}
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
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb c8 0f 63 c7 f7 7f 00 00 48 b8 c8 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb d0 0f 63 c7 f7 7f 00 00 48 b8 d0 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 27 c6 ff ff c5 fd 10 70 08 48 8b ce 49 bb d8 0f 63 c7 f7 7f 00 00 48 b8 d8 0f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 f9 c5 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 04 2a fc ff 48 b9 08 05 16 c8 f7 7f 00 00 e8 95 90 1f 5f c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0f 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 0f 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0f 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0f 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c806a1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c6 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0f 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0f 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c806a1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c5 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8030610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 2a fc ff}
00bch mov rcx,7ff7c8160508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 16 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 90 1f 5f}
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
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb e0 0f 63 c7 f7 7f 00 00 48 b8 e0 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb e8 0f 63 c7 f7 7f 00 00 48 b8 e8 0f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 27 c5 ff ff c5 fd 10 70 08 48 8b ce 49 bb f0 0f 63 c7 f7 7f 00 00 48 b8 f0 0f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 f9 c4 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 34 2a fc ff 48 b9 78 09 16 c8 f7 7f 00 00 e8 75 8f 1f 5f c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0f 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0f 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7630fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0f 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7630fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0f 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c806a1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c5 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7630ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0f 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7630ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0f 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c806a1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c4 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8030760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 2a fc ff}
00bch mov rcx,7ff7c8160978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 09 16 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 8f 1f 5f}
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
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb f8 0f 63 c7 f7 7f 00 00 48 b8 f8 0f 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 00 10 63 c7 f7 7f 00 00 48 b8 00 10 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 27 c4 ff ff c5 fd 10 70 08 48 8b ce 49 bb 08 10 63 c7 f7 7f 00 00 48 b8 08 10 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 f9 c3 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 a4 2a fc ff 48 b9 e8 0d 16 c8 f7 7f 00 00 e8 55 8e 1f 5f c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7630ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0f 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7630ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0f 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7631000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 10 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7631000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 10 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c806a218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c4 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7631008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 10 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7631008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 10 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c806a218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c3 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c80308f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 2a fc ff}
00bch mov rcx,7ff7c8160de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 16 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 8e 1f 5f}
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
; eval_g[245] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 10 10 63 c7 f7 7f 00 00 48 b8 10 10 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 18 10 63 c7 f7 7f 00 00 48 b8 18 10 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b7 c3 ff ff c5 fd 10 70 08 48 8b ce 49 bb 20 10 63 c7 f7 7f 00 00 48 b8 20 10 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 89 c3 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 74 30 fc ff 48 b9 58 12 16 c8 f7 7f 00 00 e8 35 8d 1f 5f c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 10 63 c7 f7 7f 00 00}
002eh mov rax,7ff7c7631010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 10 63 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
003ch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
003eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0041h mov r11,7ff7c7631018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 10 63 c7 f7 7f 00 00}
004bh mov rax,7ff7c7631018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 10 63 c7 f7 7f 00 00}
0055h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0057h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0059h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ch call 7ff7c806a2c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 c3 ff ff}
0061h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
0066h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0069h mov r11,7ff7c7631020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 10 63 c7 f7 7f 00 00}
0073h mov rax,7ff7c7631020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 10 63 c7 f7 7f 00 00}
007dh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0083h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0085h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0087h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008ah call 7ff7c806a2c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 c3 ff ff}
008fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0094h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0099h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
009bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00a1h vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
00a7h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
00adh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00b2h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00b7h call 7ff7c8030fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 30 fc ff}
00bch mov rcx,7ff7c8161258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 12 16 c8 f7 7f 00 00}
00c6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 8d 1f 5f}
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
; eval_g[107] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 e8 24 16 c8 f7 7f 00 00 e8 e6 7c 1f 5f 48 85 c0 74 15 48 8b c8 48 b8 b8 99 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 28 69 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c81624e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 24 16 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 7c 1f 5f}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c80699b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 99 06 c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c8066928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 69 06 c8 f7 7f 00 00}
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
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 a0 28 16 c8 f7 7f 00 00 e8 86 7c 1f 5f 48 85 c0 74 15 48 8b c8 48 b8 08 9a 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 68 69 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c81628a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 28 16 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 7c 1f 5f}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c8069a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9a 06 c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c8066968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 69 06 c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 f8 2b 16 c8 f7 7f 00 00 e8 26 7c 1f 5f 48 85 c0 74 15 48 8b c8 48 b8 48 9a 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 98 7f 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8162bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2b 16 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 7c 1f 5f}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c8069a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 9a 06 c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c8067f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 7f 06 c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IExpr<short> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 50 2f 16 c8 f7 7f 00 00 e8 c6 7b 1f 5f 48 85 c0 74 15 48 8b c8 48 b8 88 9a 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 28 80 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8162f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2f 16 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 7b 1f 5f}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c8069a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 9a 06 c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c8068028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 80 06 c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IExpr<uint> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 a8 32 16 c8 f7 7f 00 00 e8 66 7b 1f 5f 48 85 c0 74 15 48 8b c8 48 b8 c8 9a 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 b8 80 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c81632a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 32 16 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 7b 1f 5f}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c8069ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 9a 06 c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c80680b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 80 06 c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IExpr<int> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 00 36 16 c8 f7 7f 00 00 e8 06 7b 1f 5f 48 85 c0 74 15 48 8b c8 48 b8 08 9b 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 48 81 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8163600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 36 16 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 7b 1f 5f}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c8069b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9b 06 c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c8068148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 81 06 c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IExpr<long> expr)
; eval_g[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 b0 3c 16 c8 f7 7f 00 00 e8 a6 7a 1f 5f 48 85 c0 74 15 48 8b c8 48 b8 88 9b 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 68 82 06 c8 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = CTC_Zx7
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c8163cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 3c 16 c8 f7 7f 00 00}
0015h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 7a 1f 5f}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c8069b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 9b 06 c8 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c8068268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 82 06 c8 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 b8 9c 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8069cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 9c 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 e8 9c 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8069ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 9c 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 08 9d 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8069d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9d 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 28 9d 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8069d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 9d 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 88 9f 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8069f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 9f 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 a8 9f 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8069fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9f 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 58 a0 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c806a058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 a0 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 68 a1 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c806a168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 a1 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 98 a1 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c806a198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 a1 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 b8 a1 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c806a1b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 a1 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 d8 a1 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c806a1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 a1 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 f8 a1 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c806a1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 a1 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 18 a2 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c806a218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 a2 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 c8 a2 06 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c806a2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a2 06 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
