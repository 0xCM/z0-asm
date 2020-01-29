------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g~eg_IComparisonExpr`1_Byte[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 20 15 27 c6 f7 7f 00 00 39 09 ff 15 11 57 e7 fe 8b f8 48 8b ce 49 bb 28 15 27 c6 f7 7f 00 00 39 09 ff 15 02 57 e7 fe 48 8b c8 e8 e2 fb ff ff 0f b6 58 08 48 8b ce 49 bb 30 15 27 c6 f7 7f 00 00 39 09 ff 15 e9 56 e7 fe 48 8b c8 e8 c1 fb ff ff 44 0f b6 40 08 8b cf 8b d3 e8 23 65 fa ff 40 0f b6 f0 48 b9 60 03 95 c7 f7 7f 00 00 e8 40 ae aa 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6271520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 15 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-118a8efh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 57 e7 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6271528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 15 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-118a8feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 57 e7 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73fba10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6271530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 15 27 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-118a917h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 56 e7 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73fba10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fb ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c73a2380h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 65 fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c7950360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 03 95 c7 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 ae aa 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g~eg_IComparisonExpr`1_SByte[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 38 15 27 c6 f7 7f 00 00 39 09 ff 15 79 56 e7 fe 8b f8 48 8b ce 49 bb 40 15 27 c6 f7 7f 00 00 39 09 ff 15 6a 56 e7 fe 48 8b c8 e8 72 fb ff ff 48 0f be 58 08 48 8b ce 49 bb 48 15 27 c6 f7 7f 00 00 39 09 ff 15 50 56 e7 fe 48 8b c8 e8 50 fb ff ff 4c 0f be 40 08 8b cf 8b d3 e8 32 66 fa ff 48 0f be f0 48 b9 d0 06 95 c7 f7 7f 00 00 e8 8f ad aa 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6271538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 15 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-118a987h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 56 e7 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6271540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 15 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-118a996h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 56 e7 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73fba50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fb ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c6271548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 15 27 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-118a9b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 56 e7 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73fba50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 fb ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c73a2540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 66 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c79506d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 06 95 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f ad aa 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g~eg_IComparisonExpr`1_UInt16[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 50 15 27 c6 f7 7f 00 00 39 09 ff 15 e1 55 e7 fe 8b f8 48 8b ce 49 bb 58 15 27 c6 f7 7f 00 00 39 09 ff 15 d2 55 e7 fe 48 8b c8 e8 e2 fa ff ff 0f b7 58 08 48 8b ce 49 bb 60 15 27 c6 f7 7f 00 00 39 09 ff 15 b9 55 e7 fe 48 8b c8 e8 c1 fa ff ff 44 0f b7 40 08 8b cf 8b d3 e8 53 6b fa ff 0f b7 f0 48 b9 e0 09 95 c7 f7 7f 00 00 e8 e1 ac aa 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6271550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 15 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-118aa1fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 55 e7 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6271558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 15 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-118aa2eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 55 e7 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73fba70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fa ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6271560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 15 27 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-118aa47h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 55 e7 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73fba70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fa ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c73a2b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 6b fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c79509e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 09 95 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ac aa 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g~eg_IComparisonExpr`1_Int16[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 68 15 27 c6 f7 7f 00 00 39 09 ff 15 49 55 e7 fe 8b f8 48 8b ce 49 bb 70 15 27 c6 f7 7f 00 00 39 09 ff 15 3a 55 e7 fe 48 8b c8 e8 52 fa ff ff 48 0f bf 58 08 48 8b ce 49 bb 78 15 27 c6 f7 7f 00 00 39 09 ff 15 20 55 e7 fe 48 8b c8 e8 30 fa ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 62 6c fa ff 48 0f bf f0 48 b9 f0 0c 95 c7 f7 7f 00 00 e8 2f ac aa 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6271568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 15 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-118aab7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 55 e7 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6271570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 15 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-118aac6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a 55 e7 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73fba90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fa ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c6271578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 15 27 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-118aae0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 55 e7 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73fba90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 fa ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c73a2cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 6c fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c7950cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0c 95 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ac aa 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g~eg_IComparisonExpr`1_UInt32[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 80 15 27 c6 f7 7f 00 00 39 09 ff 15 b1 54 e7 fe 8b f8 48 8b ce 49 bb 88 15 27 c6 f7 7f 00 00 39 09 ff 15 a2 54 e7 fe 48 8b c8 e8 c2 f9 ff ff 8b 58 08 48 8b ce 49 bb 90 15 27 c6 f7 7f 00 00 39 09 ff 15 8a 54 e7 fe 48 8b c8 e8 a2 f9 ff ff 44 8b 40 08 8b cf 8b d3 e8 75 6d fa ff 8b f0 48 b9 00 10 95 c7 f7 7f 00 00 e8 84 ab aa 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6271580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 15 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-118ab4fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 54 e7 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6271588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 15 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-118ab5eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 54 e7 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73fbab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f9 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6271590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 15 27 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-118ab76h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a 54 e7 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73fbab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f9 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c73a2e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 6d fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c7951000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 10 95 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 ab aa 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g~eg_IComparisonExpr`1_Int32[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 98 15 27 c6 f7 7f 00 00 39 09 ff 15 29 54 e7 fe 8b f8 48 8b ce 49 bb a0 15 27 c6 f7 7f 00 00 39 09 ff 15 1a 54 e7 fe 48 8b c8 e8 42 f9 ff ff 8b 58 08 48 8b ce 49 bb a8 15 27 c6 f7 7f 00 00 39 09 ff 15 02 54 e7 fe 48 8b c8 e8 22 f9 ff ff 44 8b 40 08 8b cf 8b d3 e8 55 6e fa ff 8b f0 48 b9 10 13 95 c7 f7 7f 00 00 e8 e4 aa aa 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6271598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 15 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-118abd7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 54 e7 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62715a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 15 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-118abe6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 54 e7 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73fbad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 f9 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c62715a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 15 27 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-118abfeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 54 e7 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73fbad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f9 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c73a3010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 6e fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c7951310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 13 95 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 aa aa 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g~eg_IComparisonExpr`1_UInt64[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b0 15 27 c6 f7 7f 00 00 39 09 ff 15 a1 53 e7 fe 8b f8 48 8b ce 49 bb b8 15 27 c6 f7 7f 00 00 39 09 ff 15 92 53 e7 fe 48 8b c8 e8 c2 f8 ff ff 48 8b 58 08 48 8b ce 49 bb c0 15 27 c6 f7 7f 00 00 39 09 ff 15 79 53 e7 fe 48 8b c8 e8 a1 f8 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 33 6f fa ff 48 8b f0 48 b9 20 16 95 c7 f7 7f 00 00 e8 41 aa aa 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62715b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 15 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-118ac5fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 53 e7 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62715b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 15 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-118ac6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 53 e7 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73fbaf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f8 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62715c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 15 27 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-118ac87h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 53 e7 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73fbaf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 f8 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c73a3190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 6f fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c7951620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 16 95 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 aa aa 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g~eg_IComparisonExpr`1_Int64[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb c8 15 27 c6 f7 7f 00 00 39 09 ff 15 09 53 e7 fe 8b f8 48 8b ce 49 bb d0 15 27 c6 f7 7f 00 00 39 09 ff 15 fa 52 e7 fe 48 8b c8 e8 32 f8 ff ff 48 8b 58 08 48 8b ce 49 bb d8 15 27 c6 f7 7f 00 00 39 09 ff 15 e1 52 e7 fe 48 8b c8 e8 11 f8 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 23 70 fa ff 48 8b f0 48 b9 30 19 95 c7 f7 7f 00 00 e8 91 a9 aa 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62715c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 15 27 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-118acf7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 53 e7 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62715d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 15 27 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-118ad06h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 52 e7 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73fbb10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f8 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62715d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 15 27 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-118ad1fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 52 e7 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73fbb10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f8 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c73a3330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 70 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c7951930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 19 95 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 a9 aa 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
