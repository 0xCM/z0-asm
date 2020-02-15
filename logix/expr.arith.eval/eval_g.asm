------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[8u]()[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 50 15 63 c7 f7 7f 00 00 39 09 ff 15 71 4c f4 fe 8b f8 48 8b ce 49 bb 58 15 63 c7 f7 7f 00 00 39 09 ff 15 62 4c f4 fe 48 8b c8 e8 a2 f5 ff ff 0f b6 58 08 48 8b ce 49 bb 60 15 63 c7 f7 7f 00 00 39 09 ff 15 49 4c f4 fe 48 8b c8 e8 81 f5 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 d3 65 fa ff 40 0f b6 f0 48 b9 d8 0e cd c8 f7 7f 00 00 e8 70 a3 b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 15 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10bb38fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 4c f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb39eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 4c f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86ebea0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f5 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7631560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 15 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10bb3b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 4c f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86ebea0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f5 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8692f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 65 fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c8cd0ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0e cd c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 a3 b7 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[8i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 68 15 63 c7 f7 7f 00 00 39 09 ff 15 d9 4b f4 fe 8b f8 48 8b ce 49 bb 70 15 63 c7 f7 7f 00 00 39 09 ff 15 ca 4b f4 fe 48 8b c8 e8 32 f5 ff ff 48 0f be 58 08 48 8b ce 49 bb 78 15 63 c7 f7 7f 00 00 39 09 ff 15 b0 4b f4 fe 48 8b c8 e8 10 f5 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 f2 66 fa ff 48 0f be f0 48 b9 48 12 cd c8 f7 7f 00 00 e8 bf a2 b7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 15 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10bb427h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 4b f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb436h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 4b f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86ebee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f5 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7631578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 15 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10bb450h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 4b f4 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c86ebee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 f5 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c86930d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 66 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8cd1248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 12 cd c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf a2 b7 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[16u]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 80 15 63 c7 f7 7f 00 00 39 09 ff 15 41 4b f4 fe 8b f8 48 8b ce 49 bb 88 15 63 c7 f7 7f 00 00 39 09 ff 15 32 4b f4 fe 48 8b c8 e8 a2 f4 ff ff 0f b7 58 08 48 8b ce 49 bb 90 15 63 c7 f7 7f 00 00 39 09 ff 15 19 4b f4 fe 48 8b c8 e8 81 f4 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 23 6c fa ff 0f b7 f0 48 b9 58 15 cd c8 f7 7f 00 00 e8 11 a2 b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 15 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10bb4bfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 4b f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb4ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 4b f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86ebf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f4 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7631590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 15 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10bb4e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 4b f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86ebf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f4 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c86936b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 6c fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8cd1558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 15 cd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 a2 b7 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[16i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 98 15 63 c7 f7 7f 00 00 39 09 ff 15 a9 4a f4 fe 8b f8 48 8b ce 49 bb a0 15 63 c7 f7 7f 00 00 39 09 ff 15 9a 4a f4 fe 48 8b c8 e8 12 f4 ff ff 48 0f bf 58 08 48 8b ce 49 bb a8 15 63 c7 f7 7f 00 00 39 09 ff 15 80 4a f4 fe 48 8b c8 e8 f0 f3 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 42 6d fa ff 48 0f bf f0 48 b9 68 18 cd c8 f7 7f 00 00 e8 5f a1 b7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 15 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10bb557h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 4a f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76315a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb566h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a 4a f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86ebf20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f4 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c76315a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 15 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10bb580h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 4a f4 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c86ebf20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 f3 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8693880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 6d fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c8cd1868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 18 cd c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f a1 b7 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[32u]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b0 15 63 c7 f7 7f 00 00 39 09 ff 15 11 4a f4 fe 8b f8 48 8b ce 49 bb b8 15 63 c7 f7 7f 00 00 39 09 ff 15 02 4a f4 fe 48 8b c8 e8 82 f3 ff ff 8b 58 08 48 8b ce 49 bb c0 15 63 c7 f7 7f 00 00 39 09 ff 15 ea 49 f4 fe 48 8b c8 e8 62 f3 ff ff 44 8b 40 08 8b cf 8b d3 e8 65 6e fa ff 8b f0 48 b9 78 1b cd c8 f7 7f 00 00 e8 b4 a0 b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76315b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 15 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10bb5efh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 4a f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76315b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb5feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 4a f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86ebf40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f3 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c76315c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 15 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10bb616h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea 49 f4 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c86ebf40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 f3 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8693a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 6e fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8cd1b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b cd c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 a0 b7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[32i]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb c8 15 63 c7 f7 7f 00 00 39 09 ff 15 89 49 f4 fe 8b f8 48 8b ce 49 bb d0 15 63 c7 f7 7f 00 00 39 09 ff 15 7a 49 f4 fe 48 8b c8 e8 02 f3 ff ff 8b 58 08 48 8b ce 49 bb d8 15 63 c7 f7 7f 00 00 39 09 ff 15 62 49 f4 fe 48 8b c8 e8 e2 f2 ff ff 44 8b 40 08 8b cf 8b d3 e8 55 6f fa ff 8b f0 48 b9 88 1e cd c8 f7 7f 00 00 e8 14 a0 b7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76315c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 15 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10bb677h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 49 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76315d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb686h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a 49 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86ebf60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f3 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c76315d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 15 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10bb69eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 49 f4 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c86ebf60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 f2 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8693be0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 6f fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c8cd1e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1e cd c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 a0 b7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g[64u]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e0 15 63 c7 f7 7f 00 00 39 09 ff 15 01 49 f4 fe 8b f8 48 8b ce 49 bb e8 15 63 c7 f7 7f 00 00 39 09 ff 15 f2 48 f4 fe 48 8b c8 e8 82 f2 ff ff 48 8b 58 08 48 8b ce 49 bb f0 15 63 c7 f7 7f 00 00 39 09 ff 15 d9 48 f4 fe 48 8b c8 e8 61 f2 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 43 70 fa ff 48 8b f0 48 b9 98 21 cd c8 f7 7f 00 00 e8 71 9f b7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76315e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 15 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10bb6ffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 49 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76315e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 15 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb70eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 48 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86ebf80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f2 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76315f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 15 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10bb727h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 48 f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86ebf80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f2 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c8693d70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 70 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8cd2198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 21 cd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 9f b7 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[64i]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb f8 15 63 c7 f7 7f 00 00 39 09 ff 15 69 48 f4 fe 8b f8 48 8b ce 49 bb 00 16 63 c7 f7 7f 00 00 39 09 ff 15 5a 48 f4 fe 48 8b c8 e8 f2 f1 ff ff 48 8b 58 08 48 8b ce 49 bb 08 16 63 c7 f7 7f 00 00 39 09 ff 15 41 48 f4 fe 48 8b c8 e8 d1 f1 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 43 71 fa ff 48 8b f0 48 b9 a8 24 cd c8 f7 7f 00 00 e8 c1 9e b7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76315f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 15 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10bb797h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 48 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 16 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10bb7a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a 48 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86ebfa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 f1 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7631608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 16 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10bb7bfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 48 f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86ebfa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f1 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c8693f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 71 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8cd24a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 24 cd c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 9e b7 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
