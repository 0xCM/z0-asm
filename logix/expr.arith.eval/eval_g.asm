------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e8 15 28 c6 f7 7f 00 00 39 09 ff 15 19 f5 ea fe 8b f8 48 8b ce 49 bb f0 15 28 c6 f7 7f 00 00 39 09 ff 15 0a f5 ea fe 48 8b c8 e8 8a f5 ff ff 0f b6 58 08 48 8b ce 49 bb f8 15 28 c6 f7 7f 00 00 39 09 ff 15 f1 f4 ea fe 48 8b c8 e8 69 f5 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 c3 6f fa ff 40 0f b6 f0 48 b9 40 15 93 c7 f7 7f 00 00 e8 80 4b ad 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62815e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 15 28 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1150ae7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 f5 ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62815f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 15 28 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1150af6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a f5 ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73d1678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f5 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62815f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 15 28 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1150b0fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 f4 ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73d1678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f5 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c73790e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 6f fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c7931540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 15 93 c7 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 4b ad 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 00 16 28 c6 f7 7f 00 00 39 09 ff 15 81 f4 ea fe 8b f8 48 8b ce 49 bb 08 16 28 c6 f7 7f 00 00 39 09 ff 15 72 f4 ea fe 48 8b c8 e8 1a f5 ff ff 48 0f be 58 08 48 8b ce 49 bb 10 16 28 c6 f7 7f 00 00 39 09 ff 15 58 f4 ea fe 48 8b c8 e8 f8 f4 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 d2 70 fa ff 48 0f be f0 48 b9 b0 18 93 c7 f7 7f 00 00 e8 cf 4a ad 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6281600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 16 28 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1150b7fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 f4 ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6281608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 16 28 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1150b8eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 f4 ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73d16b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f5 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c6281610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 16 28 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-1150ba8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 f4 ea fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73d16b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f4 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c73792a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 70 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c79318b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 18 93 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 4a ad 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 18 16 28 c6 f7 7f 00 00 39 09 ff 15 e9 f3 ea fe 8b f8 48 8b ce 49 bb 20 16 28 c6 f7 7f 00 00 39 09 ff 15 da f3 ea fe 48 8b c8 e8 8a f4 ff ff 0f b7 58 08 48 8b ce 49 bb 28 16 28 c6 f7 7f 00 00 39 09 ff 15 c1 f3 ea fe 48 8b c8 e8 69 f4 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 f3 75 fa ff 0f b7 f0 48 b9 c0 1b 93 c7 f7 7f 00 00 e8 21 4a ad 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6281618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 16 28 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1150c17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 f3 ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6281620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 16 28 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1150c26h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da f3 ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73d16d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f4 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6281628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 16 28 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1150c3fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 f3 ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73d16d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f4 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c7379870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 75 fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c7931bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 1b 93 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 4a ad 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 30 16 28 c6 f7 7f 00 00 39 09 ff 15 51 f3 ea fe 8b f8 48 8b ce 49 bb 38 16 28 c6 f7 7f 00 00 39 09 ff 15 42 f3 ea fe 48 8b c8 e8 fa f3 ff ff 48 0f bf 58 08 48 8b ce 49 bb 40 16 28 c6 f7 7f 00 00 39 09 ff 15 28 f3 ea fe 48 8b c8 e8 d8 f3 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 02 77 fa ff 48 0f bf f0 48 b9 d0 1e 93 c7 f7 7f 00 00 e8 6f 49 ad 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6281630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 16 28 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1150cafh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 f3 ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6281638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 16 28 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1150cbeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 f3 ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73d16f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f3 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c6281640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 16 28 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-1150cd8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 28 f3 ea fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73d16f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 f3 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c7379a30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 77 fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c7931ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 1e 93 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 49 ad 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 48 16 28 c6 f7 7f 00 00 39 09 ff 15 b9 ee ea fe 8b f8 48 8b ce 49 bb 50 16 28 c6 f7 7f 00 00 39 09 ff 15 aa ee ea fe 48 8b c8 e8 ba fb ff ff 8b 58 08 48 8b ce 49 bb 58 16 28 c6 f7 7f 00 00 39 09 ff 15 92 ee ea fe 48 8b c8 e8 9a fb ff ff 44 8b 40 08 8b cf 8b d3 e8 15 74 fa ff 8b f0 48 b9 e0 21 93 c7 f7 7f 00 00 e8 c4 44 ad 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6281648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 16 28 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1151147h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 ee ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6281650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 16 28 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1151156h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa ee ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73d2368h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fb ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6281658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 16 28 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-115116eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 ee ea fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73d2368h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a fb ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c7379bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 74 fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c79321e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 21 93 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 44 ad 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 60 16 28 c6 f7 7f 00 00 39 09 ff 15 31 ee ea fe 8b f8 48 8b ce 49 bb 68 16 28 c6 f7 7f 00 00 39 09 ff 15 22 ee ea fe 48 8b c8 e8 3a fb ff ff 8b 58 08 48 8b ce 49 bb 70 16 28 c6 f7 7f 00 00 39 09 ff 15 0a ee ea fe 48 8b c8 e8 1a fb ff ff 44 8b 40 08 8b cf 8b d3 e8 f5 74 fa ff 8b f0 48 b9 f0 24 93 c7 f7 7f 00 00 e8 24 44 ad 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6281660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 16 28 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-11511cfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 ee ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6281668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 16 28 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-11511deh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 ee ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73d2388h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fb ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6281670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 16 28 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-11511f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a ee ea fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73d2388h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fb ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c7379d70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 74 fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c79324f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 24 93 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 44 ad 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 78 16 28 c6 f7 7f 00 00 39 09 ff 15 a9 ed ea fe 8b f8 48 8b ce 49 bb 80 16 28 c6 f7 7f 00 00 39 09 ff 15 9a ed ea fe 48 8b c8 e8 ba fa ff ff 48 8b 58 08 48 8b ce 49 bb 88 16 28 c6 f7 7f 00 00 39 09 ff 15 81 ed ea fe 48 8b c8 e8 99 fa ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 d3 75 fa ff 48 8b f0 48 b9 00 28 93 c7 f7 7f 00 00 e8 81 43 ad 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6281678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 16 28 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-1151257h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 ed ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6281680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 16 28 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-1151266h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a ed ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73d23a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fa ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6281688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 16 28 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-115127fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 ed ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73d23a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fa ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c7379ef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 75 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c7932800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 28 93 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 43 ad 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 90 16 28 c6 f7 7f 00 00 39 09 ff 15 11 ed ea fe 8b f8 48 8b ce 49 bb 98 16 28 c6 f7 7f 00 00 39 09 ff 15 02 ed ea fe 48 8b c8 e8 2a fa ff ff 48 8b 58 08 48 8b ce 49 bb a0 16 28 c6 f7 7f 00 00 39 09 ff 15 e9 ec ea fe 48 8b c8 e8 09 fa ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 c3 76 fa ff 48 8b f0 48 b9 10 2b 93 c7 f7 7f 00 00 e8 d1 42 ad 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6281690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 16 28 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-11512efh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 ed ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6281698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 16 28 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-11512feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 ed ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73d23c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fa ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62816a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 16 28 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-1151317h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 ec ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73d23c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 fa ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c737a090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 76 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c7932b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 2b 93 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 42 ad 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
