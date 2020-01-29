------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g8u[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 88 13 26 c6 f7 7f 00 00 39 09 ff 15 39 51 03 ff 8b f8 48 8b ce 49 bb 90 13 26 c6 f7 7f 00 00 39 09 ff 15 2a 51 03 ff 48 8b c8 e8 3a f7 ff ff 0f b6 58 08 48 8b ce 49 bb 98 13 26 c6 f7 7f 00 00 39 09 ff 15 11 51 03 ff 48 8b c8 e8 19 f7 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 d3 5b fa ff 40 0f b6 f0 48 b9 38 69 58 c7 f7 7f 00 00 e8 00 aa c7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 13 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcaec7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 51 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 13 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcaed6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a 51 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722b9a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f7 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6261398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 13 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fcaeefh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 51 03 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c722b9a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f7 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c71d1e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 5b fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c7586938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 69 58 c7 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 aa c7 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g8i[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a0 13 26 c6 f7 7f 00 00 39 09 ff 15 a1 50 03 ff 8b f8 48 8b ce 49 bb a8 13 26 c6 f7 7f 00 00 39 09 ff 15 92 50 03 ff 48 8b c8 e8 a2 fb ff ff 48 0f be 58 08 48 8b ce 49 bb b0 13 26 c6 f7 7f 00 00 39 09 ff 15 78 50 03 ff 48 8b c8 e8 80 fb ff ff 4c 0f be 40 08 8b cf 8b d3 e8 e2 60 fa ff 48 0f be f0 48 b9 a8 6c 58 c7 f7 7f 00 00 e8 4f a9 c7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62613a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 13 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcaf5fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 50 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62613a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 13 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcaf6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 50 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722bec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 fb ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c62613b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 13 26 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0fcaf88h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 50 03 ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c722bec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 fb ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c71d2430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 60 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c7586ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6c 58 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f a9 c7 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g16u[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b8 13 26 c6 f7 7f 00 00 39 09 ff 15 09 50 03 ff 8b f8 48 8b ce 49 bb c0 13 26 c6 f7 7f 00 00 39 09 ff 15 fa 4f 03 ff 48 8b c8 e8 02 fb ff ff 0f b7 58 08 48 8b ce 49 bb c8 13 26 c6 f7 7f 00 00 39 09 ff 15 e1 4f 03 ff 48 8b c8 e8 e1 fa ff ff 44 0f b7 40 08 8b cf 8b d3 e8 f3 61 fa ff 0f b7 f0 48 b9 b8 6f 58 c7 f7 7f 00 00 e8 a1 a8 c7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62613b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 13 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcaff7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 50 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62613c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 13 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcb006h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 4f 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722bed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 fb ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62613c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 13 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fcb01fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 4f 03 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c722bed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 fa ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c71d25f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 61 fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c7586fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6f 58 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 a8 c7 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g16i[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb d0 13 26 c6 f7 7f 00 00 39 09 ff 15 71 4f 03 ff 8b f8 48 8b ce 49 bb d8 13 26 c6 f7 7f 00 00 39 09 ff 15 62 4f 03 ff 48 8b c8 e8 62 fa ff ff 48 0f bf 58 08 48 8b ce 49 bb e0 13 26 c6 f7 7f 00 00 39 09 ff 15 48 4f 03 ff 48 8b c8 e8 40 fa ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 02 67 fa ff 48 0f bf f0 48 b9 c8 72 58 c7 f7 7f 00 00 e8 ef a7 c7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62613d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 13 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcb08fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 4f 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62613d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 13 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcb09eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 4f 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722bee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 fa ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c62613e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 13 26 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0fcb0b8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 48 4f 03 ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c722bee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 fa ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c71d2bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 67 fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c75872c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 72 58 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef a7 c7 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g32u[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e8 13 26 c6 f7 7f 00 00 39 09 ff 15 d9 4e 03 ff 8b f8 48 8b ce 49 bb f0 13 26 c6 f7 7f 00 00 39 09 ff 15 ca 4e 03 ff 48 8b c8 e8 c2 f9 ff ff 8b 58 08 48 8b ce 49 bb f8 13 26 c6 f7 7f 00 00 39 09 ff 15 b2 4e 03 ff 48 8b c8 e8 a2 f9 ff ff 44 8b 40 08 8b cf 8b d3 e8 15 68 fa ff 8b f0 48 b9 d8 75 58 c7 f7 7f 00 00 e8 44 a7 c7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62613e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 13 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcb127h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 4e 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62613f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 13 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcb136h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 4e 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722bef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f9 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c62613f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 13 26 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0fcb14eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 4e 03 ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c722bef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f9 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c71d2d70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 68 fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c75875d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 75 58 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a7 c7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g32i[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 00 14 26 c6 f7 7f 00 00 39 09 ff 15 51 4e 03 ff 8b f8 48 8b ce 49 bb 08 14 26 c6 f7 7f 00 00 39 09 ff 15 42 4e 03 ff 48 8b c8 e8 32 f9 ff ff 8b 58 08 48 8b ce 49 bb 10 14 26 c6 f7 7f 00 00 39 09 ff 15 2a 4e 03 ff 48 8b c8 e8 12 f9 ff ff 44 8b 40 08 8b cf 8b d3 e8 f5 6c fa ff 8b f0 48 b9 e8 78 58 c7 f7 7f 00 00 e8 a4 a6 c7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 14 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcb1afh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 4e 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 14 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcb1beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 4e 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722bf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f9 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6261410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 14 26 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0fcb1d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a 4e 03 ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c722bf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f9 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c71d32f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 6c fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c75878e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 78 58 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a6 c7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g64i[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 18 14 26 c6 f7 7f 00 00 39 09 ff 15 c9 4d 03 ff 8b f8 48 8b ce 49 bb 20 14 26 c6 f7 7f 00 00 39 09 ff 15 ba 4d 03 ff 48 8b c8 e8 a2 f8 ff ff 48 8b 58 08 48 8b ce 49 bb 28 14 26 c6 f7 7f 00 00 39 09 ff 15 a1 4d 03 ff 48 8b c8 e8 81 f8 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 73 73 fa ff 48 8b f0 48 b9 08 7f 58 c7 f7 7f 00 00 e8 01 a6 c7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 14 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcb237h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 4d 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 14 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcb246h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba 4d 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722bf10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f8 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6261428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 14 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fcb25fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 4d 03 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c722bf10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f8 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c71d3a10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 73 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c7587f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 7f 58 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a6 c7 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
; eval_gVector128`1[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 30 14 26 c6 f7 7f 00 00 39 09 ff 15 29 4d 03 ff 8b f8 48 8b ce 49 bb 38 14 26 c6 f7 7f 00 00 39 09 ff 15 1a 4d 03 ff 48 8b c8 e8 02 cf ff ff c5 f9 10 70 08 48 8b ce 49 bb 40 14 26 c6 f7 7f 00 00 39 09 ff 15 00 4d 03 ff 48 8b c8 e8 e0 ce ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 c1 8a fc ff 48 b9 d0 97 58 c7 f7 7f 00 00 e8 32 a5 c7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c6261430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 14 26 c6 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fcb2d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 4d 03 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c6261438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 14 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fcb2e6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 4d 03 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c7229628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 cf ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c6261440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 14 26 c6 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fcb300h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 4d 03 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c7229628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 ce ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c71f5230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 8a fc ff}
008fh mov rcx,7ff7c75897d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 97 58 c7 f7 7f 00 00}
0099h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 a5 c7 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
; eval_gVector128`1[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 48 14 26 c6 f7 7f 00 00 39 09 ff 15 61 4c 03 ff 8b f8 48 8b ce 49 bb 50 14 26 c6 f7 7f 00 00 39 09 ff 15 52 4c 03 ff 48 8b c8 e8 52 ce ff ff c5 f9 10 70 08 48 8b ce 49 bb 58 14 26 c6 f7 7f 00 00 39 09 ff 15 38 4c 03 ff 48 8b c8 e8 30 ce ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 51 8b fc ff 48 b9 a0 9c 58 c7 f7 7f 00 00 e8 52 a4 c7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c6261448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 14 26 c6 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fcb39fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 4c 03 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c6261450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 14 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fcb3aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 4c 03 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c7229658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 ce ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c6261458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 14 26 c6 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fcb3c8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 4c 03 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c7229658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 ce ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c71f53a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 8b fc ff}
008fh mov rcx,7ff7c7589ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9c 58 c7 f7 7f 00 00}
0099h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 a4 c7 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
; eval_gVector128`1[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 60 14 26 c6 f7 7f 00 00 39 09 ff 15 99 4b 03 ff 8b f8 48 8b ce 49 bb 68 14 26 c6 f7 7f 00 00 39 09 ff 15 8a 4b 03 ff 48 8b c8 e8 92 cd ff ff c5 f9 10 70 08 48 8b ce 49 bb 70 14 26 c6 f7 7f 00 00 39 09 ff 15 70 4b 03 ff 48 8b c8 e8 70 cd ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 a1 8b fc ff 48 b9 10 a1 58 c7 f7 7f 00 00 e8 72 a3 c7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c6261460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 14 26 c6 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fcb467h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 4b 03 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c6261468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 14 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fcb476h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a 4b 03 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c7229678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 cd ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c6261470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 14 26 c6 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fcb490h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 70 4b 03 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c7229678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 cd ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c71f54d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 8b fc ff}
008fh mov rcx,7ff7c758a110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a1 58 c7 f7 7f 00 00}
0099h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 a3 c7 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
; eval_gVector128`1[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 78 14 26 c6 f7 7f 00 00 39 09 ff 15 d1 4a 03 ff 8b f8 48 8b ce 49 bb 80 14 26 c6 f7 7f 00 00 39 09 ff 15 c2 4a 03 ff 48 8b c8 e8 d2 cc ff ff c5 f9 10 70 08 48 8b ce 49 bb 88 14 26 c6 f7 7f 00 00 39 09 ff 15 a8 4a 03 ff 48 8b c8 e8 b0 cc ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 31 8c fc ff 48 b9 80 a5 58 c7 f7 7f 00 00 e8 92 a2 c7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c6261478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 14 26 c6 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fcb52fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 4a 03 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c6261480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 14 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fcb53eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 4a 03 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c7229698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 cc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c6261488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 14 26 c6 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fcb558h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 4a 03 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c7229698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 cc ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c71f5640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 8c fc ff}
008fh mov rcx,7ff7c758a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a5 58 c7 f7 7f 00 00}
0099h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 a2 c7 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
; eval_gVector128`1[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb 90 14 26 c6 f7 7f 00 00 39 09 ff 15 09 4a 03 ff 8b f8 48 8b ce 49 bb 98 14 26 c6 f7 7f 00 00 39 09 ff 15 fa 49 03 ff 48 8b c8 e8 12 cc ff ff c5 f9 10 70 08 48 8b ce 49 bb a0 14 26 c6 f7 7f 00 00 39 09 ff 15 e0 49 03 ff 48 8b c8 e8 f0 cb ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 81 8c fc ff 48 b9 f0 a9 58 c7 f7 7f 00 00 e8 b2 a1 c7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c6261490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 14 26 c6 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fcb5f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 4a 03 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c6261498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 14 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fcb606h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 49 03 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c72296b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 cc ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c62614a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 14 26 c6 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fcb620h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 49 03 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c72296b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 cb ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c71f5770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 8c fc ff}
008fh mov rcx,7ff7c758a9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a9 58 c7 f7 7f 00 00}
0099h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 a1 c7 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
; eval_gVector128`1[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb a8 14 26 c6 f7 7f 00 00 39 09 ff 15 41 49 03 ff 8b f8 48 8b ce 49 bb b0 14 26 c6 f7 7f 00 00 39 09 ff 15 32 49 03 ff 48 8b c8 e8 52 cb ff ff c5 f9 10 70 08 48 8b ce 49 bb b8 14 26 c6 f7 7f 00 00 39 09 ff 15 18 49 03 ff 48 8b c8 e8 30 cb ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 11 8d fc ff 48 b9 60 ae 58 c7 f7 7f 00 00 e8 d2 a0 c7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c62614a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 14 26 c6 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fcb6bfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 49 03 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c62614b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 14 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fcb6ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 49 03 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c72296d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 cb ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c62614b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 14 26 c6 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fcb6e8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 49 03 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c72296d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 cb ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c71f58e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 8d fc ff}
008fh mov rcx,7ff7c758ae60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ae 58 c7 f7 7f 00 00}
0099h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 a0 c7 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
; eval_gVector128`1[182] = {57 56 48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 48 8b f1 48 8b ce 49 bb c0 14 26 c6 f7 7f 00 00 39 09 ff 15 79 48 03 ff 8b f8 48 8b ce 49 bb c8 14 26 c6 f7 7f 00 00 39 09 ff 15 6a 48 03 ff 48 8b c8 e8 22 cb ff ff c5 f9 10 70 08 48 8b ce 49 bb d0 14 26 c6 f7 7f 00 00 39 09 ff 15 50 48 03 ff 48 8b c8 e8 00 cb ff ff c5 f9 10 40 08 48 8d 4c 24 40 8b d7 c5 f9 29 74 24 30 c5 f9 29 44 24 20 4c 8d 44 24 30 4c 8d 4c 24 20 e8 31 93 fc ff 48 b9 d0 b2 58 c7 f7 7f 00 00 e8 f2 9f c7 5e c5 f9 28 44 24 40 c5 f9 11 40 08 c5 f8 28 74 24 50 48 83 c4 68 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c62614c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 14 26 c6 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [rip-0fcb787h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 48 03 ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c62614c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 14 26 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0fcb796h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 48 03 ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c7229788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 cb ff ff}
0046h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c62614d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 14 26 c6 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [rip-0fcb7b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 48 03 ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c7229788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 cb ff ff}
0068h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
006dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0072h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0074h vmovapd [rsp+30h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 30}
007ah vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0080h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0085h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
008ah call 7ff7c71f5fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 93 fc ff}
008fh mov rcx,7ff7c758b2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b2 58 c7 f7 7f 00 00}
0099h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 9f c7 5e}
009eh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00a4h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
00a9h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
00afh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr)
; eval_gVector256`1[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb d8 14 26 c6 f7 7f 00 00 39 09 ff 15 92 43 03 ff 8b f8 48 8b ce 49 bb e0 14 26 c6 f7 7f 00 00 39 09 ff 15 83 43 03 ff 48 8b c8 e8 a3 c9 ff ff c5 fd 10 70 08 48 8b ce 49 bb e8 14 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 63 43 03 ff 48 8b c8 e8 7b c9 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 c6 92 fc ff 48 b9 58 bd 58 c7 f7 7f 00 00 e8 e7 9a c7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62614d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 14 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcbc6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 43 03 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c62614e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 14 26 c6 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fcbc7dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 83 43 03 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c7229b08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c9 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c62614e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 14 26 c6 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fcbc9dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 63 43 03 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7229b08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c9 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c71f6480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 92 fc ff}
00aah mov rcx,7ff7c758bd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bd 58 c7 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 9a c7 5e}
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
; eval_gVector256`1[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb f0 14 26 c6 f7 7f 00 00 39 09 ff 15 9a 42 03 ff 8b f8 48 8b ce 49 bb f8 14 26 c6 f7 7f 00 00 39 09 ff 15 8b 42 03 ff 48 8b c8 e8 c3 c8 ff ff c5 fd 10 70 08 48 8b ce 49 bb 00 15 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 6b 42 03 ff 48 8b c8 e8 9b c8 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 36 93 fc ff 48 b9 28 c2 58 c7 f7 7f 00 00 e8 d7 99 c7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62614f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 14 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcbd66h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a 42 03 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c62614f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 14 26 c6 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fcbd75h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8b 42 03 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c7229b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 c8 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c6261500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 15 26 c6 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fcbd95h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6b 42 03 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7229b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c8 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c71f6600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 93 fc ff}
00aah mov rcx,7ff7c758c228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c2 58 c7 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 99 c7 5e}
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
; eval_gVector256`1[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 08 15 26 c6 f7 7f 00 00 39 09 ff 15 a2 41 03 ff 8b f8 48 8b ce 49 bb 10 15 26 c6 f7 7f 00 00 39 09 ff 15 93 41 03 ff 48 8b c8 e8 d3 c7 ff ff c5 fd 10 70 08 48 8b ce 49 bb 18 15 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 73 41 03 ff 48 8b c8 e8 ab c7 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 66 93 fc ff 48 b9 98 c6 58 c7 f7 7f 00 00 e8 c7 98 c7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcbe5eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 41 03 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c6261510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 15 26 c6 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fcbe6dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 93 41 03 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c7229b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 c7 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c6261518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 15 26 c6 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fcbe8dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 73 41 03 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7229b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab c7 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c71f6740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 93 fc ff}
00aah mov rcx,7ff7c758c698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c6 58 c7 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 98 c7 5e}
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
; eval_gVector256`1[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 20 15 26 c6 f7 7f 00 00 39 09 ff 15 aa 40 03 ff 8b f8 48 8b ce 49 bb 28 15 26 c6 f7 7f 00 00 39 09 ff 15 9b 40 03 ff 48 8b c8 e8 e3 c6 ff ff c5 fd 10 70 08 48 8b ce 49 bb 30 15 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7b 40 03 ff 48 8b c8 e8 bb c6 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 d6 93 fc ff 48 b9 08 cb 58 c7 f7 7f 00 00 e8 b7 97 c7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcbf56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 40 03 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c6261528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 15 26 c6 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fcbf65h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9b 40 03 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c7229b78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 c6 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c6261530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 15 26 c6 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fcbf85h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7b 40 03 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7229b78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb c6 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c71f68c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 93 fc ff}
00aah mov rcx,7ff7c758cb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cb 58 c7 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 97 c7 5e}
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
; eval_gVector256`1[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 38 15 26 c6 f7 7f 00 00 39 09 ff 15 b2 3f 03 ff 8b f8 48 8b ce 49 bb 40 15 26 c6 f7 7f 00 00 39 09 ff 15 a3 3f 03 ff 48 8b c8 e8 f3 c5 ff ff c5 fd 10 70 08 48 8b ce 49 bb 48 15 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 83 3f 03 ff 48 8b c8 e8 cb c5 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 06 98 fc ff 48 b9 78 cf 58 c7 f7 7f 00 00 e8 a7 96 c7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcc04eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 3f 03 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c6261540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 15 26 c6 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fcc05dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a3 3f 03 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c7229b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 c5 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c6261548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 15 26 c6 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fcc07dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 83 3f 03 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7229b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb c5 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c71f6e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 98 fc ff}
00aah mov rcx,7ff7c758cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 58 c7 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 96 c7 5e}
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
; eval_gVector256`1[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 50 15 26 c6 f7 7f 00 00 39 09 ff 15 ba 3e 03 ff 8b f8 48 8b ce 49 bb 58 15 26 c6 f7 7f 00 00 39 09 ff 15 ab 3e 03 ff 48 8b c8 e8 03 c5 ff ff c5 fd 10 70 08 48 8b ce 49 bb 60 15 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 8b 3e 03 ff 48 8b c8 e8 db c4 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 76 98 fc ff 48 b9 e8 d3 58 c7 f7 7f 00 00 e8 97 95 c7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcc146h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba 3e 03 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c6261558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 15 26 c6 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fcc155h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ab 3e 03 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c7229bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 c5 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c6261560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 15 26 c6 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fcc175h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8b 3e 03 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7229bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db c4 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c71f6f80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 98 fc ff}
00aah mov rcx,7ff7c758d3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d3 58 c7 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 95 c7 5e}
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
; eval_gVector256`1[227] = {57 56 48 81 ec a8 00 00 00 c5 f8 77 c5 f8 29 b4 24 90 00 00 00 c5 f8 29 bc 24 80 00 00 00 48 8b f1 48 8b ce 49 bb 68 15 26 c6 f7 7f 00 00 39 09 ff 15 c2 3d 03 ff 8b f8 48 8b ce 49 bb 70 15 26 c6 f7 7f 00 00 39 09 ff 15 b3 3d 03 ff 48 8b c8 e8 a3 c4 ff ff c5 fd 10 70 08 48 8b ce 49 bb 78 15 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 93 3d 03 ff 48 8b c8 e8 7b c4 ff ff c5 fd 10 40 08 48 8d 4c 24 60 8b d7 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 4c 8d 44 24 40 4c 8d 4c 24 20 e8 36 9a fc ff 48 b9 58 d8 58 c7 f7 7f 00 00 e8 87 94 c7 5e c5 fd 10 44 24 60 c5 fd 11 40 08 c5 f8 28 b4 24 90 00 00 00 c5 f8 28 bc 24 80 00 00 00 c5 f8 77 48 81 c4 a8 00 00 00 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,0a8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a8 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+90h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 00 00 00}
0015h vmovaps [rsp+80h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 00 00 00}
001eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcc23eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 3d 03 ff}
0036h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh mov r11,7ff7c6261570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 15 26 c6 f7 7f 00 00}
0045h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0047h call qword ptr [rip-0fcc24dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b3 3d 03 ff}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c7229c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c4 ff ff}
0055h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
005ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
005dh mov r11,7ff7c6261578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 15 26 c6 f7 7f 00 00}
0067h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
006dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
006fh call qword ptr [rip-0fcc26dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 93 3d 03 ff}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7229c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c4 ff ff}
007dh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0082h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0087h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0089h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
008fh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0095h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
009bh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a0h lea r9,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 20}
00a5h call 7ff7c71f7250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 9a fc ff}
00aah mov rcx,7ff7c758d858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d8 58 c7 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 94 c7 5e}
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
; LiteralExpr<byte> eval<byte>(IExpr<byte> expr)
; eval_g8u[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 e8 ea 58 c7 f7 7f 00 00 e8 36 84 c7 5e 48 85 c0 74 15 48 8b c8 48 b8 b0 90 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 b8 69 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = ZEDx7_000
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c758eae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ea 58 c7 f7 7f 00 00}
0015h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 84 c7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c72290b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 90 22 c7 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c72269b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 69 22 c7 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr)
; eval_g8i[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 a0 ee 58 c7 f7 7f 00 00 e8 d6 83 c7 5e 48 85 c0 74 15 48 8b c8 48 b8 00 91 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 58 6a 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = ZEDx7_000
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c758eea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ee 58 c7 f7 7f 00 00}
0015h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 83 c7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c7229100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 91 22 c7 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c7226a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 6a 22 c7 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr)
; eval_g16u[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 f8 f1 58 c7 f7 7f 00 00 e8 76 83 c7 5e 48 85 c0 74 15 48 8b c8 48 b8 40 91 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 e8 6a 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = ZEDx7_000
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c758f1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f1 58 c7 f7 7f 00 00}
0015h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 83 c7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c7229140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 91 22 c7 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c7226ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 6a 22 c7 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IExpr<short> expr)
; eval_g16i[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 50 f5 58 c7 f7 7f 00 00 e8 16 83 c7 5e 48 85 c0 74 15 48 8b c8 48 b8 80 91 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 18 6b 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = ZEDx7_000
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c758f550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f5 58 c7 f7 7f 00 00}
0015h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 83 c7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c7229180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 91 22 c7 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c7226b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 6b 22 c7 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IExpr<uint> expr)
; eval_g32u[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 a8 f8 58 c7 f7 7f 00 00 e8 b6 82 c7 5e 48 85 c0 74 15 48 8b c8 48 b8 38 94 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 08 7a 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = ZEDx7_000
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c758f8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f8 58 c7 f7 7f 00 00}
0015h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 82 c7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c7229438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 94 22 c7 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c7227a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 7a 22 c7 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IExpr<int> expr)
; eval_g32i[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 00 fc 58 c7 f7 7f 00 00 e8 56 82 c7 5e 48 85 c0 74 15 48 8b c8 48 b8 78 94 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 98 7a 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = ZEDx7_000
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c758fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 58 c7 f7 7f 00 00}
0015h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 82 c7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c7229478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 94 22 c7 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c7227a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 7a 22 c7 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IExpr<long> expr)
; eval_g64i[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 e0 02 5a c7 f7 7f 00 00 e8 f6 81 c7 5e 48 85 c0 74 15 48 8b c8 48 b8 f8 94 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 b8 7b 22 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; TermCode = ZEDx7_000
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c75a02e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 02 5a c7 f7 7f 00 00}
0015h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 81 c7 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c72294f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 94 22 c7 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c7227bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 7b 22 c7 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 28 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 58 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 78 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 98 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 b8 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72296b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 d8 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72296d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 88 97 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 97 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 08 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 38 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 58 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 78 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 98 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 b8 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 68 9c 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 9c 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
