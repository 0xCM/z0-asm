------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 88 15 25 c6 f7 7f 00 00 39 09 ff 15 89 e6 e9 fe 8b f8 48 8b ce 49 bb 90 15 25 c6 f7 7f 00 00 39 09 ff 15 7a e6 e9 fe 48 8b c8 e8 8a f5 ff ff 0f b6 58 08 48 8b ce 49 bb 98 15 25 c6 f7 7f 00 00 39 09 ff 15 61 e6 e9 fe 48 8b c8 e8 69 f5 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 c3 6f fa ff 40 0f b6 f0 48 b9 08 a7 92 c7 f7 7f 00 00 e8 50 3d af 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 15 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1161977h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 e6 e9 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 15 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1161986h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a e6 e9 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73b24a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f5 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6251598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 15 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-116199fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 e6 e9 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73b24a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f5 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c7359f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 6f fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c792a708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a7 92 c7 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 3d af 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a0 15 25 c6 f7 7f 00 00 39 09 ff 15 f1 e5 e9 fe 8b f8 48 8b ce 49 bb a8 15 25 c6 f7 7f 00 00 39 09 ff 15 e2 e5 e9 fe 48 8b c8 e8 1a f5 ff ff 48 0f be 58 08 48 8b ce 49 bb b0 15 25 c6 f7 7f 00 00 39 09 ff 15 c8 e5 e9 fe 48 8b c8 e8 f8 f4 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 d2 70 fa ff 48 0f be f0 48 b9 78 aa 92 c7 f7 7f 00 00 e8 9f 3c af 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62515a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 15 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1161a0fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 e5 e9 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62515a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 15 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1161a1eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 e5 e9 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73b24e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f5 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c62515b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 15 25 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-1161a38h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 e5 e9 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73b24e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f4 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c735a0d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 70 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c792aa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 aa 92 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 3c af 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b8 15 25 c6 f7 7f 00 00 39 09 ff 15 59 e5 e9 fe 8b f8 48 8b ce 49 bb c0 15 25 c6 f7 7f 00 00 39 09 ff 15 4a e5 e9 fe 48 8b c8 e8 8a f4 ff ff 0f b7 58 08 48 8b ce 49 bb c8 15 25 c6 f7 7f 00 00 39 09 ff 15 31 e5 e9 fe 48 8b c8 e8 69 f4 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 f3 75 fa ff 0f b7 f0 48 b9 88 ad 92 c7 f7 7f 00 00 e8 f1 3b af 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62515b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 15 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1161aa7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 e5 e9 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62515c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 15 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1161ab6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a e5 e9 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73b2508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f4 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62515c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 15 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1161acfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 e5 e9 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73b2508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f4 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c735a6a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 75 fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c792ad88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ad 92 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 3b af 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb d0 15 25 c6 f7 7f 00 00 39 09 ff 15 c1 e4 e9 fe 8b f8 48 8b ce 49 bb d8 15 25 c6 f7 7f 00 00 39 09 ff 15 b2 e4 e9 fe 48 8b c8 e8 fa f3 ff ff 48 0f bf 58 08 48 8b ce 49 bb e0 15 25 c6 f7 7f 00 00 39 09 ff 15 98 e4 e9 fe 48 8b c8 e8 d8 f3 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 02 77 fa ff 48 0f bf f0 48 b9 98 b0 92 c7 f7 7f 00 00 e8 3f 3b af 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62515d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 15 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1161b3fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 e4 e9 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62515d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 15 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1161b4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 e4 e9 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73b2528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f3 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c62515e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 15 25 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-1161b68h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 e4 e9 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73b2528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 f3 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c735a860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 77 fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c792b098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b0 92 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 3b af 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e8 15 25 c6 f7 7f 00 00 39 09 ff 15 29 e0 e9 fe 8b f8 48 8b ce 49 bb f0 15 25 c6 f7 7f 00 00 39 09 ff 15 1a e0 e9 fe 48 8b c8 e8 ba fb ff ff 8b 58 08 48 8b ce 49 bb f8 15 25 c6 f7 7f 00 00 39 09 ff 15 02 e0 e9 fe 48 8b c8 e8 9a fb ff ff 44 8b 40 08 8b cf 8b d3 e8 15 74 fa ff 8b f0 48 b9 a8 b3 92 c7 f7 7f 00 00 e8 94 36 af 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62515e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 15 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1161fd7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 e0 e9 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62515f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 15 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1161fe6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a e0 e9 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73b3198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fb ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c62515f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 15 25 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-1161ffeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 e0 e9 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73b3198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a fb ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c735aa20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 74 fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c792b3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b3 92 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 36 af 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 00 16 25 c6 f7 7f 00 00 39 09 ff 15 a1 df e9 fe 8b f8 48 8b ce 49 bb 08 16 25 c6 f7 7f 00 00 39 09 ff 15 92 df e9 fe 48 8b c8 e8 3a fb ff ff 8b 58 08 48 8b ce 49 bb 10 16 25 c6 f7 7f 00 00 39 09 ff 15 7a df e9 fe 48 8b c8 e8 1a fb ff ff 44 8b 40 08 8b cf 8b d3 e8 f5 74 fa ff 8b f0 48 b9 b8 b6 92 c7 f7 7f 00 00 e8 f4 35 af 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 16 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-116205fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 df e9 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 16 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-116206eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 df e9 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73b31b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fb ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6251610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 16 25 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-1162086h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a df e9 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73b31b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fb ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c735aba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 74 fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c792b6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b6 92 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 35 af 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 18 16 25 c6 f7 7f 00 00 39 09 ff 15 19 df e9 fe 8b f8 48 8b ce 49 bb 20 16 25 c6 f7 7f 00 00 39 09 ff 15 0a df e9 fe 48 8b c8 e8 ba fa ff ff 48 8b 58 08 48 8b ce 49 bb 28 16 25 c6 f7 7f 00 00 39 09 ff 15 f1 de e9 fe 48 8b c8 e8 99 fa ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 d3 75 fa ff 48 8b f0 48 b9 c8 b9 92 c7 f7 7f 00 00 e8 51 35 af 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 16 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-11620e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 df e9 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 16 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-11620f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a df e9 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73b31d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fa ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6251628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 16 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-116210fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 de e9 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73b31d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fa ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c735ad20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 75 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c792b9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b9 92 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 35 af 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 30 16 25 c6 f7 7f 00 00 39 09 ff 15 81 de e9 fe 8b f8 48 8b ce 49 bb 38 16 25 c6 f7 7f 00 00 39 09 ff 15 72 de e9 fe 48 8b c8 e8 2a fa ff ff 48 8b 58 08 48 8b ce 49 bb 40 16 25 c6 f7 7f 00 00 39 09 ff 15 59 de e9 fe 48 8b c8 e8 09 fa ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 c3 76 fa ff 48 8b f0 48 b9 d8 bc 92 c7 f7 7f 00 00 e8 a1 34 af 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 16 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-116217fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 de e9 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 16 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-116218eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 de e9 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73b31f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fa ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6251640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 16 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-11621a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 de e9 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73b31f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 fa ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c735aec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 76 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c792bcd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bc 92 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 34 af 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
