------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g8u[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 80 15 26 c6 f7 7f 00 00 39 09 ff 15 a1 37 03 ff 8b f8 48 8b ce 49 bb 88 15 26 c6 f7 7f 00 00 39 09 ff 15 92 37 03 ff 48 8b c8 e8 8a f2 ff ff 0f b6 58 08 48 8b ce 49 bb 90 15 26 c6 f7 7f 00 00 39 09 ff 15 79 37 03 ff 48 8b c8 e8 69 f2 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 43 40 fa ff 40 0f b6 f0 48 b9 38 69 58 c7 f7 7f 00 00 e8 70 8e c7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcc85fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 37 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcc86eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 37 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722d088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f2 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6261590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 15 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fcc887h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 37 03 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c722d088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f2 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c71d1e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 40 fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c7586938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 69 58 c7 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 8e c7 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g8i[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 98 15 26 c6 f7 7f 00 00 39 09 ff 15 09 37 03 ff 8b f8 48 8b ce 49 bb a0 15 26 c6 f7 7f 00 00 39 09 ff 15 fa 36 03 ff 48 8b c8 e8 1a f2 ff ff 48 0f be 58 08 48 8b ce 49 bb a8 15 26 c6 f7 7f 00 00 39 09 ff 15 e0 36 03 ff 48 8b c8 e8 f8 f1 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 52 45 fa ff 48 0f be f0 48 b9 a8 6c 58 c7 f7 7f 00 00 e8 bf 8d c7 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcc8f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 37 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62615a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcc906h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 36 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722d0c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f2 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c62615a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 15 26 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0fcc920h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 36 03 ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c722d0c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f1 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c71d2430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 45 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c7586ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6c 58 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 8d c7 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g16u[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b0 15 26 c6 f7 7f 00 00 39 09 ff 15 71 36 03 ff 8b f8 48 8b ce 49 bb b8 15 26 c6 f7 7f 00 00 39 09 ff 15 62 36 03 ff 48 8b c8 e8 8a f1 ff ff 0f b7 58 08 48 8b ce 49 bb c0 15 26 c6 f7 7f 00 00 39 09 ff 15 49 36 03 ff 48 8b c8 e8 69 f1 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 63 46 fa ff 0f b7 f0 48 b9 b8 6f 58 c7 f7 7f 00 00 e8 11 8d c7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62615b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcc98fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 36 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62615b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcc99eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 36 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722d0e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f1 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62615c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 15 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fcc9b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 36 03 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c722d0e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f1 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c71d25f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 46 fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c7586fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6f 58 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 8d c7 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g16i[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb c8 15 26 c6 f7 7f 00 00 39 09 ff 15 d9 31 03 ff 8b f8 48 8b ce 49 bb d0 15 26 c6 f7 7f 00 00 39 09 ff 15 ca 31 03 ff 48 8b c8 e8 ca fb ff ff 48 0f bf 58 08 48 8b ce 49 bb d8 15 26 c6 f7 7f 00 00 39 09 ff 15 b0 31 03 ff 48 8b c8 e8 a8 fb ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 72 47 fa ff 48 0f bf f0 48 b9 c8 72 58 c7 f7 7f 00 00 e8 5f 88 c7 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62615c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcce27h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 31 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62615d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcce36h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 31 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722dfd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fb ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c62615d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 15 26 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0fcce50h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 31 03 ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c722dfd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 fb ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c71d2bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 47 fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c75872c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 72 58 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 88 c7 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g32u[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e0 15 26 c6 f7 7f 00 00 39 09 ff 15 41 31 03 ff 8b f8 48 8b ce 49 bb e8 15 26 c6 f7 7f 00 00 39 09 ff 15 32 31 03 ff 48 8b c8 e8 3a fb ff ff 8b 58 08 48 8b ce 49 bb f0 15 26 c6 f7 7f 00 00 39 09 ff 15 1a 31 03 ff 48 8b c8 e8 1a fb ff ff 44 8b 40 08 8b cf 8b d3 e8 85 48 fa ff 8b f0 48 b9 d8 75 58 c7 f7 7f 00 00 e8 b4 87 c7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62615e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fccebfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 31 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62615e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcceceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 31 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722dff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fb ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c62615f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 15 26 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0fccee6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 31 03 ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c722dff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fb ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c71d2d70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 48 fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c75875d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 75 58 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 87 c7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g32i[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb f8 15 26 c6 f7 7f 00 00 39 09 ff 15 b9 30 03 ff 8b f8 48 8b ce 49 bb 00 16 26 c6 f7 7f 00 00 39 09 ff 15 aa 30 03 ff 48 8b c8 e8 ba fa ff ff 8b 58 08 48 8b ce 49 bb 08 16 26 c6 f7 7f 00 00 39 09 ff 15 92 30 03 ff 48 8b c8 e8 9a fa ff ff 44 8b 40 08 8b cf 8b d3 e8 65 4d fa ff 8b f0 48 b9 e8 78 58 c7 f7 7f 00 00 e8 14 87 c7 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62615f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fccf47h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 30 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 16 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fccf56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 30 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722e018h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fa ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6261608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 16 26 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0fccf6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 30 03 ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c722e018h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a fa ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c71d32f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 4d fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c75878e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 78 58 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 87 c7 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g64u[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 10 16 26 c6 f7 7f 00 00 39 09 ff 15 31 30 03 ff 8b f8 48 8b ce 49 bb 18 16 26 c6 f7 7f 00 00 39 09 ff 15 22 30 03 ff 48 8b c8 e8 3a fa ff ff 48 8b 58 08 48 8b ce 49 bb 20 16 26 c6 f7 7f 00 00 39 09 ff 15 09 30 03 ff 48 8b c8 e8 19 fa ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 43 4e fa ff 48 8b f0 48 b9 f8 7b 58 c7 f7 7f 00 00 e8 71 86 c7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 16 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fccfcfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 30 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 16 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fccfdeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 30 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722e038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fa ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6261620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 16 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fccff7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 30 03 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c722e038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 fa ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c71d3470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 4e fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c7587bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7b 58 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 86 c7 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g64i[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 28 16 26 c6 f7 7f 00 00 39 09 ff 15 99 2f 03 ff 8b f8 48 8b ce 49 bb 30 16 26 c6 f7 7f 00 00 39 09 ff 15 8a 2f 03 ff 48 8b c8 e8 aa f9 ff ff 48 8b 58 08 48 8b ce 49 bb 38 16 26 c6 f7 7f 00 00 39 09 ff 15 71 2f 03 ff 48 8b c8 e8 89 f9 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 33 53 fa ff 48 8b f0 48 b9 08 7f 58 c7 f7 7f 00 00 e8 c1 85 c7 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 16 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0fcd067h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 2f 03 ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 16 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0fcd076h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a 2f 03 ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c722e058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f9 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6261638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 16 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0fcd08fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 2f 03 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c722e058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f9 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c71d3a10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 53 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c7587f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 7f 58 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 85 c7 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
