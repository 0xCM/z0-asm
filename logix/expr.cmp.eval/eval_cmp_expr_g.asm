------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_cmp_expr_g[8u]()[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b0 12 63 c7 f7 7f 00 00 39 09 ff 15 81 64 f4 fe 8b f8 48 8b ce 49 bb b8 12 63 c7 f7 7f 00 00 39 09 ff 15 72 64 f4 fe 48 8b c8 e8 ba fb ff ff 0f b6 58 08 48 8b ce 49 bb c0 12 63 c7 f7 7f 00 00 39 09 ff 15 59 64 f4 fe 48 8b c8 e8 99 fb ff ff 44 0f b6 40 08 8b cf 8b d3 e8 83 80 fa ff 40 0f b6 f0 48 b9 d8 0e cd c8 f7 7f 00 00 e8 20 be b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76312b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 12 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10b9b7fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 64 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76312b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 12 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10b9b8eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 64 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fb ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76312c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 12 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10b9ba7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 64 f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86eaa08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fb ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8692f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 80 fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c8cd0ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0e cd c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 be b7 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_cmp_expr_g[8i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb c8 12 63 c7 f7 7f 00 00 39 09 ff 15 e9 63 f4 fe 8b f8 48 8b ce 49 bb d0 12 63 c7 f7 7f 00 00 39 09 ff 15 da 63 f4 fe 48 8b c8 e8 3a fb ff ff 48 0f be 58 08 48 8b ce 49 bb d8 12 63 c7 f7 7f 00 00 39 09 ff 15 c0 63 f4 fe 48 8b c8 e8 18 fb ff ff 4c 0f be 40 08 8b cf 8b d3 e8 a2 81 fa ff 48 0f be f0 48 b9 48 12 cd c8 f7 7f 00 00 e8 6f bd b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76312c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 12 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10b9c17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 63 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76312d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 12 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10b9c26h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da 63 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fb ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c76312d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 12 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10b9c40h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 63 f4 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c86eaa38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 fb ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c86930d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 81 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8cd1248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 12 cd c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f bd b7 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_cmp_expr_g[16u]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e0 12 63 c7 f7 7f 00 00 39 09 ff 15 51 63 f4 fe 8b f8 48 8b ce 49 bb e8 12 63 c7 f7 7f 00 00 39 09 ff 15 42 63 f4 fe 48 8b c8 e8 9a fa ff ff 0f b7 58 08 48 8b ce 49 bb f0 12 63 c7 f7 7f 00 00 39 09 ff 15 29 63 f4 fe 48 8b c8 e8 79 fa ff ff 44 0f b7 40 08 8b cf 8b d3 e8 d3 86 fa ff 0f b7 f0 48 b9 58 15 cd c8 f7 7f 00 00 e8 c1 bc b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76312e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 12 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10b9cafh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 63 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76312e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 12 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10b9cbeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 63 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a fa ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76312f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 12 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10b9cd7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 63 f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86eaa48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fa ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c86936b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 86 fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8cd1558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 15 cd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 bc b7 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_cmp_expr_g[16i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb f8 12 63 c7 f7 7f 00 00 39 09 ff 15 b9 62 f4 fe 8b f8 48 8b ce 49 bb 00 13 63 c7 f7 7f 00 00 39 09 ff 15 aa 62 f4 fe 48 8b c8 e8 fa f9 ff ff 48 0f bf 58 08 48 8b ce 49 bb 08 13 63 c7 f7 7f 00 00 39 09 ff 15 90 62 f4 fe 48 8b c8 e8 d8 f9 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 f2 87 fa ff 48 0f bf f0 48 b9 68 18 cd c8 f7 7f 00 00 e8 0f bc b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76312f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 12 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10b9d47h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 62 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10b9d56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 62 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f9 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7631308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 13 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10b9d70h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 62 f4 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c86eaa58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 f9 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8693880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 87 fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c8cd1868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 18 cd c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f bc b7 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_cmp_expr_g[32u]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 10 13 63 c7 f7 7f 00 00 39 09 ff 15 21 62 f4 fe 8b f8 48 8b ce 49 bb 18 13 63 c7 f7 7f 00 00 39 09 ff 15 12 62 f4 fe 48 8b c8 e8 5a f9 ff ff 8b 58 08 48 8b ce 49 bb 20 13 63 c7 f7 7f 00 00 39 09 ff 15 fa 61 f4 fe 48 8b c8 e8 3a f9 ff ff 44 8b 40 08 8b cf 8b d3 e8 15 89 fa ff 8b f0 48 b9 78 1b cd c8 f7 7f 00 00 e8 64 bb b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10b9ddfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 62 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10b9deeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 62 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f9 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7631320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 13 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10b9e06h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 61 f4 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c86eaa68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f9 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8693a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 89 fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8cd1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b cd c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 bb b7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_cmp_expr_g[32i]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 28 13 63 c7 f7 7f 00 00 39 09 ff 15 99 61 f4 fe 8b f8 48 8b ce 49 bb 30 13 63 c7 f7 7f 00 00 39 09 ff 15 8a 61 f4 fe 48 8b c8 e8 ca f8 ff ff 8b 58 08 48 8b ce 49 bb 38 13 63 c7 f7 7f 00 00 39 09 ff 15 72 61 f4 fe 48 8b c8 e8 aa f8 ff ff 44 8b 40 08 8b cf 8b d3 e8 05 8a fa ff 8b f0 48 b9 88 1e cd c8 f7 7f 00 00 e8 c4 ba b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10b9e67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 61 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10b9e76h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a 61 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca f8 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7631338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 13 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10b9e8eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 61 f4 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c86eaa78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f8 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8693be0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 8a fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8cd1e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1e cd c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 ba b7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_cmp_expr_g[64i]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 40 13 63 c7 f7 7f 00 00 39 09 ff 15 11 61 f4 fe 8b f8 48 8b ce 49 bb 48 13 63 c7 f7 7f 00 00 39 09 ff 15 02 61 f4 fe 48 8b c8 e8 3a f8 ff ff 48 8b 58 08 48 8b ce 49 bb 50 13 63 c7 f7 7f 00 00 39 09 ff 15 e9 60 f4 fe 48 8b c8 e8 19 f8 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 a3 8c fa ff 48 8b f0 48 b9 a8 24 cd c8 f7 7f 00 00 e8 21 ba b7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10b9eefh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 61 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10b9efeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 61 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f8 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7631350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 13 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10b9f17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 60 f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86eaa88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f8 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c8693f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 8c fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8cd24a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 24 cd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 ba b7 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
