------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_cmp_expr_g[8u]()[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 50 09 64 c7 f7 7f 00 00 39 09 ff 15 a1 34 0b ff 8b f8 48 8b ce 49 bb 58 09 64 c7 f7 7f 00 00 39 09 ff 15 92 34 0b ff 48 8b c8 e8 ba fd ff ff 0f b6 58 08 48 8b ce 49 bb 60 09 64 c7 f7 7f 00 00 39 09 ff 15 79 34 0b ff 48 8b c8 e8 99 fd ff ff 44 0f b6 40 08 8b cf 8b d3 e8 03 64 fa ff 40 0f b6 f0 48 b9 20 79 85 c8 f7 7f 00 00 e8 a0 97 cd 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 09 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4cb5fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 34 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 09 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4cb6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 34 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858d288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fd ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7640960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 09 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4cb87h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 34 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858d288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fd ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8533900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 64 fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c8857920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 79 85 c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 97 cd 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_cmp_expr_g[8i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 68 09 64 c7 f7 7f 00 00 39 09 ff 15 09 34 0b ff 8b f8 48 8b ce 49 bb 70 09 64 c7 f7 7f 00 00 39 09 ff 15 fa 33 0b ff 48 8b c8 e8 32 f6 ff ff 48 0f be 58 08 48 8b ce 49 bb 78 09 64 c7 f7 7f 00 00 39 09 ff 15 e0 33 0b ff 48 8b c8 e8 10 f6 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 22 65 fa ff 48 0f be f0 48 b9 90 7c 85 c8 f7 7f 00 00 e8 ef 96 cd 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 09 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4cbf7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 34 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 09 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4cc06h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 33 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f6 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7640978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 09 64 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0f4cc20h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 33 0b ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c858cbb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 f6 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8533ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 65 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8857c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c 85 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 96 cd 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_cmp_expr_g[16u]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 80 09 64 c7 f7 7f 00 00 39 09 ff 15 71 33 0b ff 8b f8 48 8b ce 49 bb 88 09 64 c7 f7 7f 00 00 39 09 ff 15 62 33 0b ff 48 8b c8 e8 92 f5 ff ff 0f b7 58 08 48 8b ce 49 bb 90 09 64 c7 f7 7f 00 00 39 09 ff 15 49 33 0b ff 48 8b c8 e8 71 f5 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 43 66 fa ff 0f b7 f0 48 b9 a0 7f 85 c8 f7 7f 00 00 e8 41 96 cd 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 09 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4cc8fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 33 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 09 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4cc9eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 33 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f5 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7640990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 09 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4ccb7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 33 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858cbc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f5 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8533ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 66 fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8857fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7f 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 96 cd 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_cmp_expr_g[16i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 98 09 64 c7 f7 7f 00 00 39 09 ff 15 d9 32 0b ff 8b f8 48 8b ce 49 bb a0 09 64 c7 f7 7f 00 00 39 09 ff 15 ca 32 0b ff 48 8b c8 e8 f2 f4 ff ff 48 0f bf 58 08 48 8b ce 49 bb a8 09 64 c7 f7 7f 00 00 39 09 ff 15 b0 32 0b ff 48 8b c8 e8 d0 f4 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 62 6b fa ff 48 0f bf f0 48 b9 b0 82 85 c8 f7 7f 00 00 e8 8f 95 cd 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 09 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4cd27h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 32 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76409a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 09 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4cd36h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 32 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 f4 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c76409a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 09 64 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0f4cd50h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 32 0b ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c858cbd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 f4 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8534270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 6b fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c88582b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 82 85 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 95 cd 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_cmp_expr_g[32u]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b0 09 64 c7 f7 7f 00 00 39 09 ff 15 41 32 0b ff 8b f8 48 8b ce 49 bb b8 09 64 c7 f7 7f 00 00 39 09 ff 15 32 32 0b ff 48 8b c8 e8 52 f4 ff ff 8b 58 08 48 8b ce 49 bb c0 09 64 c7 f7 7f 00 00 39 09 ff 15 1a 32 0b ff 48 8b c8 e8 32 f4 ff ff 44 8b 40 08 8b cf 8b d3 e8 85 6c fa ff 8b f0 48 b9 c0 85 85 c8 f7 7f 00 00 e8 e4 94 cd 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76409b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 09 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4cdbfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 32 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76409b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 09 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4cdceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 32 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 f4 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c76409c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 09 64 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0f4cde6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 32 0b ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c858cbe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f4 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8534440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 6c fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c88585c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 85 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 94 cd 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_cmp_expr_g[32i]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb c8 09 64 c7 f7 7f 00 00 39 09 ff 15 b9 31 0b ff 8b f8 48 8b ce 49 bb d0 09 64 c7 f7 7f 00 00 39 09 ff 15 aa 31 0b ff 48 8b c8 e8 c2 f3 ff ff 8b 58 08 48 8b ce 49 bb d8 09 64 c7 f7 7f 00 00 39 09 ff 15 92 31 0b ff 48 8b c8 e8 a2 f3 ff ff 44 8b 40 08 8b cf 8b d3 e8 75 6d fa ff 8b f0 48 b9 d0 88 85 c8 f7 7f 00 00 e8 44 94 cd 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76409c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 09 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4ce47h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 31 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76409d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 09 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4ce56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 31 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f3 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c76409d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 09 64 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0f4ce6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 31 0b ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c858cbf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f3 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c85345d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 6d fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c88588d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 88 85 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 94 cd 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_cmp_expr_g[64i]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e0 09 64 c7 f7 7f 00 00 39 09 ff 15 21 2d 0b ff 8b f8 48 8b ce 49 bb e8 09 64 c7 f7 7f 00 00 39 09 ff 15 12 2d 0b ff 48 8b c8 e8 b2 fb ff ff 48 8b 58 08 48 8b ce 49 bb f0 09 64 c7 f7 7f 00 00 39 09 ff 15 f9 2c 0b ff 48 8b c8 e8 91 fb ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 03 6c fa ff 48 8b f0 48 b9 f0 8e 85 c8 f7 7f 00 00 e8 91 8f cd 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76409e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 09 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4d2dfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 2d 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76409e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 09 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4d2eeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 2d 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858d890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 fb ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76409f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 09 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4d307h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 2c 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858d890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 fb ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c8534910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 6c fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8858ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8e 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 8f cd 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr)
; eval_cmp_pred_g[8u]()[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb f8 09 64 c7 f7 7f 00 00 39 09 ff 15 89 2c 0b ff 8b f8 48 8b ce 49 bb 00 0a 64 c7 f7 7f 00 00 39 09 ff 15 7a 2c 0b ff 48 8b c8 e8 fa f4 ff ff 0f b6 58 08 48 8b ce 49 bb 08 0a 64 c7 f7 7f 00 00 39 09 ff 15 61 2c 0b ff 48 8b c8 e8 d9 f4 ff ff 44 0f b6 40 08 8b cf 8b d3 48 b8 50 61 58 c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76409f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 09 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4d377h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 2c 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0a 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4d386h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a 2c 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858d288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f4 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7640a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0a 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4d39fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 2c 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858d288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f4 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h mov rax,7ff7c8586150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 61 58 c8 f7 7f 00 00}
0072h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr)
; eval_cmp_pred_g[8i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 10 0a 64 c7 f7 7f 00 00 39 09 ff 15 01 2c 0b ff 8b f8 48 8b ce 49 bb 18 0a 64 c7 f7 7f 00 00 39 09 ff 15 f2 2b 0b ff 48 8b c8 e8 82 ed ff ff 48 0f be 58 08 48 8b ce 49 bb 20 0a 64 c7 f7 7f 00 00 39 09 ff 15 d8 2b 0b ff 48 8b c8 e8 60 ed ff ff 4c 0f be 40 08 8b cf 8b d3 48 b8 c0 62 58 c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0a 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4d3ffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 2c 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0a 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4d40eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 2b 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 ed ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7640a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0a 64 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0f4d428h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 2b 0b ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c858cbb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 ed ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h mov rax,7ff7c85862c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 62 58 c8 f7 7f 00 00}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0081h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 04}
0083h add [rdi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 07}
0085h xor al,[rbx]                            ; XOR r8, r/m8 || 32 /r || encoded[2]{32 03}
0087h xor [rdx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 02}
0089h (bad)                                   ; <invalid> || <invalid> || encoded[2]{60 01}
008bh jo short 00cdh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr)
; eval_cmp_pred_g[16u]()[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 28 0a 64 c7 f7 7f 00 00 39 09 ff 15 79 2b 0b ff 8b f8 48 8b ce 49 bb 30 0a 64 c7 f7 7f 00 00 39 09 ff 15 6a 2b 0b ff 48 8b c8 e8 f2 ec ff ff 0f b7 58 08 48 8b ce 49 bb 38 0a 64 c7 f7 7f 00 00 39 09 ff 15 51 2b 0b ff 48 8b c8 e8 d1 ec ff ff 44 0f b7 40 08 8b cf 8b d3 48 b8 30 64 58 c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0a 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4d487h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 2b 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0a 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4d496h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 2b 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ec ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7640a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0a 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4d4afh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 2b 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858cbc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 ec ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h mov rax,7ff7c8586430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 64 58 c8 f7 7f 00 00}
0072h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr)
; eval_cmp_pred_g[16i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 40 0a 64 c7 f7 7f 00 00 39 09 ff 15 f1 2a 0b ff 8b f8 48 8b ce 49 bb 48 0a 64 c7 f7 7f 00 00 39 09 ff 15 e2 2a 0b ff 48 8b c8 e8 62 ec ff ff 48 0f bf 58 08 48 8b ce 49 bb 50 0a 64 c7 f7 7f 00 00 39 09 ff 15 c8 2a 0b ff 48 8b c8 e8 40 ec ff ff 4c 0f bf 40 08 8b cf 8b d3 48 b8 a0 65 58 c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0a 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4d50fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 2a 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0a 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4d51eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 2a 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ec ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7640a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0a 64 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0f4d538h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 2a 0b ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c858cbd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 ec ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h mov rax,7ff7c85865a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 65 58 c8 f7 7f 00 00}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0081h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 04}
0083h add [rdi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 07}
0085h xor al,[rbx]                            ; XOR r8, r/m8 || 32 /r || encoded[2]{32 03}
0087h xor [rdx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 02}
0089h (bad)                                   ; <invalid> || <invalid> || encoded[2]{60 01}
008bh jo short 00cdh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr)
; eval_cmp_pred_g[32u]()[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 58 0a 64 c7 f7 7f 00 00 39 09 ff 15 69 2a 0b ff 8b f8 48 8b ce 49 bb 60 0a 64 c7 f7 7f 00 00 39 09 ff 15 5a 2a 0b ff 48 8b c8 e8 d2 eb ff ff 8b 58 08 48 8b ce 49 bb 68 0a 64 c7 f7 7f 00 00 39 09 ff 15 42 2a 0b ff 48 8b c8 e8 b2 eb ff ff 44 8b 40 08 8b cf 8b d3 48 b8 10 67 58 c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0a 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4d597h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 2a 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0a 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4d5a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a 2a 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 eb ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7640a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0a 64 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0f4d5beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 2a 0b ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c858cbe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 eb ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h mov rax,7ff7c8586710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 67 58 c8 f7 7f 00 00}
0070h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr)
; eval_cmp_pred_g[32i]()[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 70 0a 64 c7 f7 7f 00 00 39 09 ff 15 e1 29 0b ff 8b f8 48 8b ce 49 bb 78 0a 64 c7 f7 7f 00 00 39 09 ff 15 d2 29 0b ff 48 8b c8 e8 42 eb ff ff 8b 58 08 48 8b ce 49 bb 80 0a 64 c7 f7 7f 00 00 39 09 ff 15 ba 29 0b ff 48 8b c8 e8 22 eb ff ff 44 8b 40 08 8b cf 8b d3 48 b8 40 68 58 c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0a 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4d61fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 29 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0a 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4d62eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 29 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858cbf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 eb ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7640a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0a 64 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0f4d646h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba 29 0b ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c858cbf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 eb ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h mov rax,7ff7c8586840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 68 58 c8 f7 7f 00 00}
0070h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr)
; eval_cmp_pred_g[64i]()[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 88 0a 64 c7 f7 7f 00 00 39 09 ff 15 59 29 0b ff 8b f8 48 8b ce 49 bb 90 0a 64 c7 f7 7f 00 00 39 09 ff 15 4a 29 0b ff 48 8b c8 e8 42 f7 ff ff 48 8b 58 08 48 8b ce 49 bb 98 0a 64 c7 f7 7f 00 00 39 09 ff 15 31 29 0b ff 48 8b c8 e8 21 f7 ff ff 4c 8b 40 08 8b cf 48 8b d3 48 b8 a0 6a 58 c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0a 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4d6a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 29 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0a 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4d6b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 29 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858d890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 f7 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7640a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0a 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4d6cfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 29 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858d890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f7 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h mov rax,7ff7c8586aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 6a 58 c8 f7 7f 00 00}
0072h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
; eval_vcmp_expr128_g[8u]()[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb a0 0a 64 c7 f7 7f 00 00 39 09 ff 15 c9 28 0b ff 8b f8 48 8b ce 49 bb a8 0a 64 c7 f7 7f 00 00 39 09 ff 15 ba 28 0b ff 48 8b c8 e8 22 c1 ff ff c5 f9 10 70 08 48 8b ce 49 bb b0 0a 64 c7 f7 7f 00 00 39 09 ff 15 a0 28 0b ff 48 8b c8 e8 00 c1 ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 11 7a fc ff 48 b9 18 a9 85 c8 f7 7f 00 00 e8 62 8a cd 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7640aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0a 64 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0f4d737h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 28 0b ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0a 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f4d746h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba 28 0b ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858a318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 c1 ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7640ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0a 64 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0f4d760h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 28 0b ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c858a318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 c1 ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8555c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 7a fc ff}
008fh mov rcx,7ff7c885a918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a9 85 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 8a cd 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
; eval_vcmp_expr128_g[8i]()[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb b8 0a 64 c7 f7 7f 00 00 39 09 ff 15 01 28 0b ff 8b f8 48 8b ce 49 bb c0 0a 64 c7 f7 7f 00 00 39 09 ff 15 f2 27 0b ff 48 8b c8 e8 72 c0 ff ff c5 f9 10 70 08 48 8b ce 49 bb c8 0a 64 c7 f7 7f 00 00 39 09 ff 15 d8 27 0b ff 48 8b c8 e8 50 c0 ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 b1 7a fc ff 48 b9 e8 ad 85 c8 f7 7f 00 00 e8 82 89 cd 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7640ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0a 64 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0f4d7ffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 28 0b ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0a 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f4d80eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 27 0b ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858a348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 c0 ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7640ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0a 64 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0f4d828h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 27 0b ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c858a348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 c0 ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8555dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 7a fc ff}
008fh mov rcx,7ff7c885ade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad 85 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 89 cd 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
; eval_vcmp_expr128_g[16u]()[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb d0 0a 64 c7 f7 7f 00 00 39 09 ff 15 39 27 0b ff 8b f8 48 8b ce 49 bb d8 0a 64 c7 f7 7f 00 00 39 09 ff 15 2a 27 0b ff 48 8b c8 e8 c2 c1 ff ff c5 f9 10 70 08 48 8b ce 49 bb e0 0a 64 c7 f7 7f 00 00 39 09 ff 15 10 27 0b ff 48 8b c8 e8 a0 c1 ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 11 7b fc ff 48 b9 58 b2 85 c8 f7 7f 00 00 e8 a2 88 cd 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7640ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0a 64 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0f4d8c7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 27 0b ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0a 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f4d8d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a 27 0b ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858a578h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c1 ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7640ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0a 64 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0f4d8f0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 27 0b ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c858a578h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 c1 ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8555f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 7b fc ff}
008fh mov rcx,7ff7c885b258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b2 85 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 88 cd 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
; eval_vcmp_expr128_g[16i]()[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb e8 0a 64 c7 f7 7f 00 00 39 09 ff 15 71 26 0b ff 8b f8 48 8b ce 49 bb f0 0a 64 c7 f7 7f 00 00 39 09 ff 15 62 26 0b ff 48 8b c8 e8 02 c1 ff ff c5 f9 10 70 08 48 8b ce 49 bb f8 0a 64 c7 f7 7f 00 00 39 09 ff 15 48 26 0b ff 48 8b c8 e8 e0 c0 ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 b1 7b fc ff 48 b9 c8 b6 85 c8 f7 7f 00 00 e8 c2 87 cd 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7640ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0a 64 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0f4d98fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 26 0b ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0a 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f4d99eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 26 0b ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858a598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 c1 ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7640af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0a 64 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0f4d9b8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 48 26 0b ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c858a598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 c0 ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8556090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 7b fc ff}
008fh mov rcx,7ff7c885b6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b6 85 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 87 cd 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
; eval_vcmp_expr128_g[32u]()[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 00 0b 64 c7 f7 7f 00 00 39 09 ff 15 a9 25 0b ff 8b f8 48 8b ce 49 bb 08 0b 64 c7 f7 7f 00 00 39 09 ff 15 9a 25 0b ff 48 8b c8 e8 42 c0 ff ff c5 f9 10 70 08 48 8b ce 49 bb 10 0b 64 c7 f7 7f 00 00 39 09 ff 15 80 25 0b ff 48 8b c8 e8 20 c0 ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 11 7c fc ff 48 b9 38 bb 85 c8 f7 7f 00 00 e8 e2 86 cd 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7640b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0b 64 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0f4da57h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 25 0b ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0b 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f4da66h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a 25 0b ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858a5b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 c0 ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7640b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0b 64 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0f4da80h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 25 0b ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c858a5b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 c0 ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c85561d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 7c fc ff}
008fh mov rcx,7ff7c885bb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb 85 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 86 cd 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
; eval_vcmp_expr128_g[32i]()[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 18 0b 64 c7 f7 7f 00 00 39 09 ff 15 e1 24 0b ff 8b f8 48 8b ce 49 bb 20 0b 64 c7 f7 7f 00 00 39 09 ff 15 d2 24 0b ff 48 8b c8 e8 82 bf ff ff c5 f9 10 70 08 48 8b ce 49 bb 28 0b 64 c7 f7 7f 00 00 39 09 ff 15 b8 24 0b ff 48 8b c8 e8 60 bf ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 b1 7c fc ff 48 b9 a8 bf 85 c8 f7 7f 00 00 e8 02 86 cd 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7640b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0b 64 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0f4db1fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 24 0b ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0b 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f4db2eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 24 0b ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858a5d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 bf ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7640b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0b 64 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0f4db48h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 24 0b ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c858a5d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 bf ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8556350h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 7c fc ff}
008fh mov rcx,7ff7c885bfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bf 85 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 86 cd 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
; eval_vcmp_expr128_g[64i]()[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 30 0b 64 c7 f7 7f 00 00 39 09 ff 15 19 24 0b ff 8b f8 48 8b ce 49 bb 38 0b 64 c7 f7 7f 00 00 39 09 ff 15 0a 24 0b ff 48 8b c8 e8 52 bf ff ff c5 f9 10 70 08 48 8b ce 49 bb 40 0b 64 c7 f7 7f 00 00 39 09 ff 15 f0 23 0b ff 48 8b c8 e8 30 bf ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 e1 7e fc ff 48 b9 18 c4 85 c8 f7 7f 00 00 e8 22 85 cd 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c7640b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0b 64 c7 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0f4dbe7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 24 0b ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0b 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f4dbf6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a 24 0b ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858a688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 bf ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c7640b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0b 64 c7 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0f4dc10h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 23 0b ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c858a688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 bf ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c8556660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 7e fc ff}
008fh mov rcx,7ff7c885c418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c4 85 c8 f7 7f 00 00}
0099h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 85 cd 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr)
; eval_vcmp_expr256_g[8u]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 48 0b 64 c7 f7 7f 00 00 39 09 ff 15 42 23 0b ff 8b f8 48 8b ce 49 bb 50 0b 64 c7 f7 7f 00 00 39 09 ff 15 33 23 0b ff 48 8b c8 e8 73 bf ff ff c5 fd 10 70 08 48 8b ce 49 bb 58 0b 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 13 23 0b ff 48 8b c8 e8 4b bf ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 b6 86 fc ff 48 b9 a0 ce 85 c8 f7 7f 00 00 e8 27 84 cd 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0b 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4dcbeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 23 0b ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7640b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0b 64 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0f4dccdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 33 23 0b ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c858a798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 bf ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7640b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0b 64 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0f4dcedh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 13 23 0b ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c858a798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b bf ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8556f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 86 fc ff}
00aah mov rcx,7ff7c885cea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ce 85 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 84 cd 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr)
; eval_vcmp_expr256_g[8i]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 60 0b 64 c7 f7 7f 00 00 39 09 ff 15 4a 22 0b ff 8b f8 48 8b ce 49 bb 68 0b 64 c7 f7 7f 00 00 39 09 ff 15 3b 22 0b ff 48 8b c8 e8 93 be ff ff c5 fd 10 70 08 48 8b ce 49 bb 70 0b 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1b 22 0b ff 48 8b c8 e8 6b be ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 36 87 fc ff 48 b9 70 d3 85 c8 f7 7f 00 00 e8 17 83 cd 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0b 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4ddb6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 22 0b ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7640b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0b 64 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0f4ddc5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3b 22 0b ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c858a7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 be ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7640b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0b 64 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0f4dde5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b 22 0b ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c858a7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b be ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85570c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 87 fc ff}
00aah mov rcx,7ff7c885d370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d3 85 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 83 cd 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr)
; eval_vcmp_expr256_g[16u]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 78 0b 64 c7 f7 7f 00 00 39 09 ff 15 52 21 0b ff 8b f8 48 8b ce 49 bb 80 0b 64 c7 f7 7f 00 00 39 09 ff 15 43 21 0b ff 48 8b c8 e8 a3 bd ff ff c5 fd 10 70 08 48 8b ce 49 bb 88 0b 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 23 21 0b ff 48 8b c8 e8 7b bd ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 76 87 fc ff 48 b9 e0 d7 85 c8 f7 7f 00 00 e8 07 82 cd 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0b 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4deaeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 21 0b ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7640b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0b 64 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0f4debdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 43 21 0b ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c858a7e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 bd ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7640b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0b 64 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0f4deddh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 23 21 0b ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c858a7e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b bd ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8557210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 87 fc ff}
00aah mov rcx,7ff7c885d7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d7 85 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 82 cd 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr)
; eval_vcmp_expr256_g[16i]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 90 0b 64 c7 f7 7f 00 00 39 09 ff 15 4a 1c 0b ff 8b f8 48 8b ce 49 bb 98 0b 64 c7 f7 7f 00 00 39 09 ff 15 3b 1c 0b ff 48 8b c8 e8 a3 b8 ff ff c5 fd 10 70 08 48 8b ce 49 bb a0 0b 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1b 1c 0b ff 48 8b c8 e8 7b b8 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 e6 83 fc ff 48 b9 50 dc 85 c8 f7 7f 00 00 e8 e7 7c cd 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0b 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4e3b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 1c 0b ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7640b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0b 64 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0f4e3c5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3b 1c 0b ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c858a808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 b8 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7640ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0b 64 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0f4e3e5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b 1c 0b ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c858a808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b b8 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85573a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 83 fc ff}
00aah mov rcx,7ff7c885dc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 dc 85 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 7c cd 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr)
; eval_vcmp_expr256_g[32u]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb a8 0b 64 c7 f7 7f 00 00 39 09 ff 15 52 1b 0b ff 8b f8 48 8b ce 49 bb b0 0b 64 c7 f7 7f 00 00 39 09 ff 15 43 1b 0b ff 48 8b c8 e8 b3 b7 ff ff c5 fd 10 70 08 48 8b ce 49 bb b8 0b 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 23 1b 0b ff 48 8b c8 e8 8b b7 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 26 84 fc ff 48 b9 c0 e0 85 c8 f7 7f 00 00 e8 d7 7b cd 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0b 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4e4aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 1b 0b ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7640bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0b 64 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0f4e4bdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 43 1b 0b ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c858a828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b7 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7640bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0b 64 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0f4e4ddh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 23 1b 0b ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c858a828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b b7 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c85574f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 84 fc ff}
00aah mov rcx,7ff7c885e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 85 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 7b cd 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr)
; eval_vcmp_expr256_g[32i]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb c0 0b 64 c7 f7 7f 00 00 39 09 ff 15 5a 1a 0b ff 8b f8 48 8b ce 49 bb c8 0b 64 c7 f7 7f 00 00 39 09 ff 15 4b 1a 0b ff 48 8b c8 e8 c3 b6 ff ff c5 fd 10 70 08 48 8b ce 49 bb d0 0b 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 2b 1a 0b ff 48 8b c8 e8 9b b6 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 a6 84 fc ff 48 b9 30 e5 85 c8 f7 7f 00 00 e8 c7 7a cd 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0b 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4e5a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a 1a 0b ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7640bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0b 64 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0f4e5b5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4b 1a 0b ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c858a848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 b6 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7640bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0b 64 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0f4e5d5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2b 1a 0b ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c858a848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b b6 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8557680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 84 fc ff}
00aah mov rcx,7ff7c885e530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e5 85 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 7a cd 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr)
; eval_vcmp_expr256_g[64i]()[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb d8 0b 64 c7 f7 7f 00 00 39 09 ff 15 62 19 0b ff 8b f8 48 8b ce 49 bb e0 0b 64 c7 f7 7f 00 00 39 09 ff 15 53 19 0b ff 48 8b c8 e8 63 b6 ff ff c5 fd 10 70 08 48 8b ce 49 bb e8 0b 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 33 19 0b ff 48 8b c8 e8 3b b6 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 86 86 fc ff 48 b9 a0 e9 85 c8 f7 7f 00 00 e8 b7 79 cd 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0b 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4e69eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 19 0b ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c7640be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0b 64 c7 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0f4e6adh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 53 19 0b ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c858a8f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 b6 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c7640be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0b 64 c7 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0f4e6cdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 33 19 0b ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c858a8f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b b6 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c8557970h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 86 fc ff}
00aah mov rcx,7ff7c885e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e9 85 c8 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 79 cd 5e}
00b9h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
00bfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
00c4h vmovaps xmm6,[rsp+90h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 00 00 00}
00cdh vmovaps xmm7,[rsp+80h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 00 00 00}
00d6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d9h add rsp,0a8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a8 00 00 00}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h ret                                     ; RET || C3 || encoded[1]{c3}
