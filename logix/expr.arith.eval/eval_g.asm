------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[8u]()[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb f0 13 62 c7 f7 7f 00 00 39 09 ff 15 e1 83 f2 fe 8b f8 48 8b ce 49 bb f8 13 62 c7 f7 7f 00 00 39 09 ff 15 d2 83 f2 fe 48 8b c8 e8 7a f9 ff ff 0f b6 58 08 48 8b ce 49 bb 00 14 62 c7 f7 7f 00 00 39 09 ff 15 b9 83 f2 fe 48 8b c8 e8 59 f9 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 03 65 fa ff 40 0f b6 f0 48 b9 d8 0e ca c8 f7 7f 00 00 e8 40 dc b6 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76213f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 13 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10d7c1fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 83 f2 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76213f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 13 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10d7c2eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 83 f2 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86f89a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f9 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7621400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 14 62 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10d7c47h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 83 f2 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86f89a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f9 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c869f560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 65 fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c8ca0ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0e ca c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 dc b6 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[8i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 08 14 62 c7 f7 7f 00 00 39 09 ff 15 49 83 f2 fe 8b f8 48 8b ce 49 bb 10 14 62 c7 f7 7f 00 00 39 09 ff 15 3a 83 f2 fe 48 8b c8 e8 0a f9 ff ff 48 0f be 58 08 48 8b ce 49 bb 18 14 62 c7 f7 7f 00 00 39 09 ff 15 20 83 f2 fe 48 8b c8 e8 e8 f8 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 22 66 fa ff 48 0f be f0 48 b9 48 12 ca c8 f7 7f 00 00 e8 8f db b6 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7621408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 14 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10d7cb7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 83 f2 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7621410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 14 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10d7cc6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a 83 f2 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86f89e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f9 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7621418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 14 62 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10d7ce0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 83 f2 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c86f89e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f8 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c869f730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 66 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8ca1248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 12 ca c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f db b6 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[16u]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 20 14 62 c7 f7 7f 00 00 39 09 ff 15 b1 82 f2 fe 8b f8 48 8b ce 49 bb 28 14 62 c7 f7 7f 00 00 39 09 ff 15 a2 82 f2 fe 48 8b c8 e8 7a f8 ff ff 0f b7 58 08 48 8b ce 49 bb 30 14 62 c7 f7 7f 00 00 39 09 ff 15 89 82 f2 fe 48 8b c8 e8 59 f8 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 53 6b fa ff 0f b7 f0 48 b9 58 15 ca c8 f7 7f 00 00 e8 e1 da b6 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7621420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 14 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10d7d4fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 82 f2 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7621428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 14 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10d7d5eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 82 f2 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86f8a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f8 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7621430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 14 62 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10d7d77h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 82 f2 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86f8a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f8 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c869fd10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 6b fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8ca1558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 15 ca c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 da b6 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[16i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 38 14 62 c7 f7 7f 00 00 39 09 ff 15 19 82 f2 fe 8b f8 48 8b ce 49 bb 40 14 62 c7 f7 7f 00 00 39 09 ff 15 0a 82 f2 fe 48 8b c8 e8 ea f7 ff ff 48 0f bf 58 08 48 8b ce 49 bb 48 14 62 c7 f7 7f 00 00 39 09 ff 15 f0 81 f2 fe 48 8b c8 e8 c8 f7 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 72 6c fa ff 48 0f bf f0 48 b9 68 18 ca c8 f7 7f 00 00 e8 2f da b6 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7621438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 14 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10d7de7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 82 f2 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7621440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 14 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10d7df6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a 82 f2 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86f8a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea f7 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7621448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 14 62 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10d7e10h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 81 f2 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c86f8a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f7 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c869fee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 6c fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c8ca1868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 18 ca c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f da b6 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[32u]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 50 14 62 c7 f7 7f 00 00 39 09 ff 15 81 81 f2 fe 8b f8 48 8b ce 49 bb 58 14 62 c7 f7 7f 00 00 39 09 ff 15 72 81 f2 fe 48 8b c8 e8 5a f7 ff ff 8b 58 08 48 8b ce 49 bb 60 14 62 c7 f7 7f 00 00 39 09 ff 15 5a 81 f2 fe 48 8b c8 e8 3a f7 ff ff 44 8b 40 08 8b cf 8b d3 e8 95 6d fa ff 8b f0 48 b9 78 1b ca c8 f7 7f 00 00 e8 84 d9 b6 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7621450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 14 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10d7e7fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 81 f2 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7621458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 14 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10d7e8eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 81 f2 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86f8a48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f7 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7621460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 14 62 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10d7ea6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a 81 f2 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c86f8a48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f7 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c86a00b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 6d fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8ca1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b ca c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 d9 b6 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[32i]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 68 14 62 c7 f7 7f 00 00 39 09 ff 15 f9 80 f2 fe 8b f8 48 8b ce 49 bb 70 14 62 c7 f7 7f 00 00 39 09 ff 15 ea 80 f2 fe 48 8b c8 e8 da f6 ff ff 8b 58 08 48 8b ce 49 bb 78 14 62 c7 f7 7f 00 00 39 09 ff 15 d2 80 f2 fe 48 8b c8 e8 ba f6 ff ff 44 8b 40 08 8b cf 8b d3 e8 85 6e fa ff 8b f0 48 b9 88 1e ca c8 f7 7f 00 00 e8 e4 d8 b6 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7621468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 14 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10d7f07h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 80 f2 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7621470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 14 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10d7f16h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea 80 f2 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86f8a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f6 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7621478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 14 62 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10d7f2eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 80 f2 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c86f8a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba f6 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c86a0240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 6e fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8ca1e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1e ca c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 d8 b6 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g[64u]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 80 14 62 c7 f7 7f 00 00 39 09 ff 15 71 80 f2 fe 8b f8 48 8b ce 49 bb 88 14 62 c7 f7 7f 00 00 39 09 ff 15 62 80 f2 fe 48 8b c8 e8 5a f6 ff ff 48 8b 58 08 48 8b ce 49 bb 90 14 62 c7 f7 7f 00 00 39 09 ff 15 49 80 f2 fe 48 8b c8 e8 39 f6 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 73 6f fa ff 48 8b f0 48 b9 98 21 ca c8 f7 7f 00 00 e8 41 d8 b6 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7621480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 14 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10d7f8fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 80 f2 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7621488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 14 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10d7f9eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 80 f2 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86f8a88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f6 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7621490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 14 62 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10d7fb7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 80 f2 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86f8a88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f6 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c86a03d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 6f fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8ca2198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 21 ca c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 d8 b6 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[64i]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 98 14 62 c7 f7 7f 00 00 39 09 ff 15 d9 7b f2 fe 8b f8 48 8b ce 49 bb a0 14 62 c7 f7 7f 00 00 39 09 ff 15 ca 7b f2 fe 48 8b c8 e8 ca fb ff ff 48 8b 58 08 48 8b ce 49 bb a8 14 62 c7 f7 7f 00 00 39 09 ff 15 b1 7b f2 fe 48 8b c8 e8 a9 fb ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 73 6c fa ff 48 8b f0 48 b9 a8 24 ca c8 f7 7f 00 00 e8 91 d3 b6 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7621498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 14 62 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10d8427h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 7b f2 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76214a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 14 62 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10d8436h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 7b f2 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86f94a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fb ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76214a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 14 62 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10d844fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 7b f2 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86f94a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fb ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c86a0580h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 6c fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8ca24a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 24 ca c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 d3 b6 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
