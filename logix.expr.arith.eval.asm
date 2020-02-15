------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[8u]()[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb f0 0b 64 c7 f7 7f 00 00 39 09 ff 15 81 18 0b ff 8b f8 48 8b ce 49 bb f8 0b 64 c7 f7 7f 00 00 39 09 ff 15 72 18 0b ff 48 8b c8 e8 5a f8 ff ff 0f b6 58 08 48 8b ce 49 bb 00 0c 64 c7 f7 7f 00 00 39 09 ff 15 59 18 0b ff 48 8b c8 e8 39 f8 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 43 45 fa ff 40 0f b6 f0 48 b9 20 79 85 c8 f7 7f 00 00 e8 e0 78 cd 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0b 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4e77fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 18 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0b 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4e78eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 18 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858ebe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f8 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7640c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0c 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4e7a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 18 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858ebe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f8 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8533900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 45 fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c8857920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 79 85 c8 f7 7f 00 00}
007bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 78 cd 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[8i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 08 0c 64 c7 f7 7f 00 00 39 09 ff 15 e9 17 0b ff 8b f8 48 8b ce 49 bb 10 0c 64 c7 f7 7f 00 00 39 09 ff 15 da 17 0b ff 48 8b c8 e8 ea f7 ff ff 48 0f be 58 08 48 8b ce 49 bb 18 0c 64 c7 f7 7f 00 00 39 09 ff 15 c0 17 0b ff 48 8b c8 e8 c8 f7 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 62 46 fa ff 48 0f be f0 48 b9 90 7c 85 c8 f7 7f 00 00 e8 2f 78 cd 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0c 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4e817h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 17 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0c 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4e826h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da 17 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858ec28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea f7 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7640c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0c 64 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0f4e840h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 17 0b ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c858ec28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f7 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8533ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 46 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c8857c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c 85 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 78 cd 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[16u]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 20 0c 64 c7 f7 7f 00 00 39 09 ff 15 51 17 0b ff 8b f8 48 8b ce 49 bb 28 0c 64 c7 f7 7f 00 00 39 09 ff 15 42 17 0b ff 48 8b c8 e8 5a f7 ff ff 0f b7 58 08 48 8b ce 49 bb 30 0c 64 c7 f7 7f 00 00 39 09 ff 15 29 17 0b ff 48 8b c8 e8 39 f7 ff ff 44 0f b7 40 08 8b cf 8b d3 e8 83 47 fa ff 0f b7 f0 48 b9 a0 7f 85 c8 f7 7f 00 00 e8 81 77 cd 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0c 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4e8afh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 17 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0c 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4e8beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 17 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858ec48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f7 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7640c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0c 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4e8d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 17 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858ec48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f7 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c8533ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 47 fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c8857fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7f 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 77 cd 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[16i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 38 0c 64 c7 f7 7f 00 00 39 09 ff 15 b9 16 0b ff 8b f8 48 8b ce 49 bb 40 0c 64 c7 f7 7f 00 00 39 09 ff 15 aa 16 0b ff 48 8b c8 e8 ca f6 ff ff 48 0f bf 58 08 48 8b ce 49 bb 48 0c 64 c7 f7 7f 00 00 39 09 ff 15 90 16 0b ff 48 8b c8 e8 a8 f6 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 a2 4c fa ff 48 0f bf f0 48 b9 b0 82 85 c8 f7 7f 00 00 e8 cf 76 cd 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0c 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4e947h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 16 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0c 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4e956h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 16 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858ec68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca f6 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7640c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0c 64 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-0f4e970h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 16 0b ff}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c858ec68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 f6 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c8534270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 4c fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c88582b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 82 85 c8 f7 7f 00 00}
007ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 76 cd 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[32u]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 50 0c 64 c7 f7 7f 00 00 39 09 ff 15 21 16 0b ff 8b f8 48 8b ce 49 bb 58 0c 64 c7 f7 7f 00 00 39 09 ff 15 12 16 0b ff 48 8b c8 e8 3a f6 ff ff 8b 58 08 48 8b ce 49 bb 60 0c 64 c7 f7 7f 00 00 39 09 ff 15 fa 15 0b ff 48 8b c8 e8 1a f6 ff ff 44 8b 40 08 8b cf 8b d3 e8 c5 4d fa ff 8b f0 48 b9 c0 85 85 c8 f7 7f 00 00 e8 24 76 cd 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0c 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4e9dfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 16 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0c 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4e9eeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 16 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f6 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7640c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0c 64 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0f4ea06h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 15 0b ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c858ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f6 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c8534440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 4d fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c88585c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 85 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 76 cd 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[32i]()[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 68 0c 64 c7 f7 7f 00 00 39 09 ff 15 99 15 0b ff 8b f8 48 8b ce 49 bb 70 0c 64 c7 f7 7f 00 00 39 09 ff 15 8a 15 0b ff 48 8b c8 e8 ba f5 ff ff 8b 58 08 48 8b ce 49 bb 78 0c 64 c7 f7 7f 00 00 39 09 ff 15 72 15 0b ff 48 8b c8 e8 9a f5 ff ff 44 8b 40 08 8b cf 8b d3 e8 b5 4e fa ff 8b f0 48 b9 d0 88 85 c8 f7 7f 00 00 e8 84 75 cd 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0c 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4ea67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 15 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0c 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4ea76h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a 15 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba f5 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c7640c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0c 64 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-0f4ea8eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 15 0b ff}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c858eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f5 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c85345d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 4e fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c88588d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 88 85 c8 f7 7f 00 00}
0077h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 75 cd 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g[64u]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 80 0c 64 c7 f7 7f 00 00 39 09 ff 15 11 15 0b ff 8b f8 48 8b ce 49 bb 88 0c 64 c7 f7 7f 00 00 39 09 ff 15 02 15 0b ff 48 8b c8 e8 3a f5 ff ff 48 8b 58 08 48 8b ce 49 bb 90 0c 64 c7 f7 7f 00 00 39 09 ff 15 e9 14 0b ff 48 8b c8 e8 19 f5 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 a3 4f fa ff 48 8b f0 48 b9 e0 8b 85 c8 f7 7f 00 00 e8 e1 74 cd 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0c 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4eaefh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 15 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0c 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4eafeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 15 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858ecc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f5 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7640c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0c 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4eb17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 14 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858ecc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f5 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c8534760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 4f fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8858be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 74 cd 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[64i]()[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 98 0c 64 c7 f7 7f 00 00 39 09 ff 15 79 14 0b ff 8b f8 48 8b ce 49 bb a0 0c 64 c7 f7 7f 00 00 39 09 ff 15 6a 14 0b ff 48 8b c8 e8 aa f4 ff ff 48 8b 58 08 48 8b ce 49 bb a8 0c 64 c7 f7 7f 00 00 39 09 ff 15 51 14 0b ff 48 8b c8 e8 89 f4 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 a3 50 fa ff 48 8b f0 48 b9 f0 8e 85 c8 f7 7f 00 00 e8 31 74 cd 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7640c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0c 64 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0f4eb87h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 14 0b ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7640ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0c 64 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0f4eb96h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 14 0b ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c858ece8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f4 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7640ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0c 64 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0f4ebafh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 14 0b ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c858ece8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f4 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c8534910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 50 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c8858ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8e 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 74 cd 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> inc<byte>(IUnaryArithmeticOp<byte> a)
; inc_g[8u]()[45] = {56 48 83 ec 20 e8 0e f5 ff ff 0f b6 48 08 ff c1 40 0f b6 f1 48 b9 20 79 85 c8 f7 7f 00 00 e8 dd 73 cd 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858edc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e f5 ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c8857920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 79 85 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 73 cd 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> inc<sbyte>(IUnaryArithmeticOp<sbyte> a)
; inc_g[8i]()[46] = {56 48 83 ec 20 e8 0e f5 ff ff 48 0f be 48 08 ff c1 48 0f be f1 48 b9 90 7c 85 c8 f7 7f 00 00 e8 8c 73 cd 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858ee18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e f5 ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c8857c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c 85 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 73 cd 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> inc<ushort>(IUnaryArithmeticOp<ushort> a)
; inc_g[16u]()[44] = {56 48 83 ec 20 e8 ee f4 ff ff 0f b7 48 08 ff c1 0f b7 f1 48 b9 a0 7f 85 c8 f7 7f 00 00 e8 3e 73 cd 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858ee48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f4 ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c8857fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7f 85 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 73 cd 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> inc<short>(IUnaryArithmeticOp<short> a)
; inc_g[16i]()[46] = {56 48 83 ec 20 e8 de f4 ff ff 48 0f bf 48 08 ff c1 48 0f bf f1 48 b9 b0 82 85 c8 f7 7f 00 00 e8 fc 72 cd 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858ee78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f4 ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c88582b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 82 85 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 72 cd 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> inc<uint>(IUnaryArithmeticOp<uint> a)
; inc_g[32u]()[39] = {56 48 83 ec 20 e8 be f4 ff ff 8b 70 08 ff c6 48 b9 c0 85 85 c8 f7 7f 00 00 e8 b2 72 cd 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858eea8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f4 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c88585c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 85 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 72 cd 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> inc<int>(IUnaryArithmeticOp<int> a)
; inc_g[32i]()[39] = {56 48 83 ec 20 e8 ae f4 ff ff 8b 70 08 ff c6 48 b9 d0 88 85 c8 f7 7f 00 00 e8 72 72 cd 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858eed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae f4 ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
000fh mov rcx,7ff7c88588d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 88 85 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 72 cd 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> inc<ulong>(IUnaryArithmeticOp<ulong> a)
; inc_g[64u]()[42] = {56 48 83 ec 20 e8 f6 fb ff ff 48 8b 70 08 48 ff c6 48 b9 e0 8b 85 c8 f7 7f 00 00 e8 20 6e cd 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858fa70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fb ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c8858be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 85 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 6e cd 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> inc<long>(IUnaryArithmeticOp<long> a)
; inc_g[64i]()[42] = {56 48 83 ec 20 e8 e6 fb ff ff 48 8b 70 08 48 ff c6 48 b9 f0 8e 85 c8 f7 7f 00 00 e8 e0 6d cd 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858faa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fb ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0011h mov rcx,7ff7c8858ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8e 85 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 6d cd 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> dec<byte>(IUnaryArithmeticOp<byte> a)
; dec_g[8u]()[45] = {56 48 83 ec 20 e8 ce ee ff ff 0f b6 48 08 ff c9 40 0f b6 f1 48 b9 20 79 85 c8 f7 7f 00 00 e8 9d 6d cd 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858edc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce ee ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0014h mov rcx,7ff7c8857920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 79 85 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 6d cd 5e}
0023h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> dec<sbyte>(IUnaryArithmeticOp<sbyte> a)
; dec_g[8i]()[46] = {56 48 83 ec 20 e8 ce ee ff ff 48 0f be 48 08 ff c9 48 0f be f1 48 b9 90 7c 85 c8 f7 7f 00 00 e8 4c 6d cd 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858ee18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce ee ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c8857c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c 85 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 6d cd 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> dec<ushort>(IUnaryArithmeticOp<ushort> a)
; dec_g[16u]()[44] = {56 48 83 ec 20 e8 ae ee ff ff 0f b7 48 08 ff c9 0f b7 f1 48 b9 a0 7f 85 c8 f7 7f 00 00 e8 fe 6c cd 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858ee48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ee ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0013h mov rcx,7ff7c8857fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7f 85 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 6c cd 5e}
0022h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0026h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> dec<short>(IUnaryArithmeticOp<short> a)
; dec_g[16i]()[46] = {56 48 83 ec 20 e8 9e ee ff ff 48 0f bf 48 08 ff c9 48 0f bf f1 48 b9 b0 82 85 c8 f7 7f 00 00 e8 bc 6c cd 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858ee78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ee ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c88582b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 82 85 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 6c cd 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> dec<uint>(IUnaryArithmeticOp<uint> a)
; dec_g[32u]()[39] = {56 48 83 ec 20 e8 7e ee ff ff 8b 70 08 ff ce 48 b9 c0 85 85 c8 f7 7f 00 00 e8 72 6c cd 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858eea8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e ee ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c88585c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 85 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 6c cd 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> dec<int>(IUnaryArithmeticOp<int> a)
; dec_g[32i]()[39] = {56 48 83 ec 20 e8 6e ee ff ff 8b 70 08 ff ce 48 b9 d0 88 85 c8 f7 7f 00 00 e8 32 6c cd 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858eed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e ee ff ff}
000ah mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
000dh dec esi                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ce}
000fh mov rcx,7ff7c88588d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 88 85 c8 f7 7f 00 00}
0019h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 6c cd 5e}
001eh mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0021h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0025h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> dec<ulong>(IUnaryArithmeticOp<ulong> a)
; dec_g[64u]()[42] = {56 48 83 ec 20 e8 c6 f9 ff ff 48 8b 70 08 48 ff ce 48 b9 e0 8b 85 c8 f7 7f 00 00 e8 f0 6b cd 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858fa70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f9 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c8858be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 85 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 6b cd 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> dec<long>(IUnaryArithmeticOp<long> a)
; dec_g[64i]()[42] = {56 48 83 ec 20 e8 b6 f9 ff ff 48 8b 70 08 48 ff ce 48 b9 f0 8e 85 c8 f7 7f 00 00 e8 b0 6b cd 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858faa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 f9 ff ff}
000ah mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
000eh dec rsi                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ce}
0011h mov rcx,7ff7c8858ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8e 85 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 6b cd 5e}
0020h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> negate<byte>(IUnaryArithmeticOp<byte> a)
; negate_g[8u]()[47] = {56 48 83 ec 20 e8 9e ec ff ff 0f b6 48 08 f7 d1 ff c1 40 0f b6 f1 48 b9 20 79 85 c8 f7 7f 00 00 e8 6b 6b cd 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858edc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ec ff ff}
000ah movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0016h mov rcx,7ff7c8857920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 79 85 c8 f7 7f 00 00}
0020h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 6b cd 5e}
0025h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0029h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> negate<sbyte>(IUnaryArithmeticOp<sbyte> a)
; negate_g[8i]()[46] = {56 48 83 ec 20 e8 9e ec ff ff 48 0f be 48 08 f7 d9 48 0f be f1 48 b9 90 7c 85 c8 f7 7f 00 00 e8 1c 6b cd 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858ee18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ec ff ff}
000ah movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0015h mov rcx,7ff7c8857c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c 85 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 6b cd 5e}
0024h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> negate<ushort>(IUnaryArithmeticOp<ushort> a)
; negate_g[16u]()[46] = {56 48 83 ec 20 e8 7e ec ff ff 0f b7 48 08 f7 d1 ff c1 0f b7 f1 48 b9 a0 7f 85 c8 f7 7f 00 00 e8 cc 6a cd 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858ee48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e ec ff ff}
000ah movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
000eh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0010h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0012h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0015h mov rcx,7ff7c8857fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7f 85 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 6a cd 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> negate<short>(IUnaryArithmeticOp<short> a)
; negate_g[16i]()[46] = {56 48 83 ec 20 e8 5e ec ff ff 48 0f bf 48 08 f7 d9 48 0f bf f1 48 b9 b0 82 85 c8 f7 7f 00 00 e8 7c 6a cd 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858ee78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e ec ff ff}
000ah movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
000fh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0011h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0015h mov rcx,7ff7c88582b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 82 85 c8 f7 7f 00 00}
001fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 6a cd 5e}
0024h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0028h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> negate<uint>(IUnaryArithmeticOp<uint> a)
; negate_g[32u]()[43] = {56 48 83 ec 20 e8 3e ec ff ff 8b 48 08 8b f1 f7 d6 ff c6 48 b9 c0 85 85 c8 f7 7f 00 00 e8 2e 6a cd 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858eea8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ec ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0011h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0013h mov rcx,7ff7c88585c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 85 c8 f7 7f 00 00}
001dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 6a cd 5e}
0022h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0025h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0029h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> negate<int>(IUnaryArithmeticOp<int> a)
; negate_g[32i]()[41] = {56 48 83 ec 20 e8 2e ec ff ff 8b 48 08 8b f1 f7 de 48 b9 d0 88 85 c8 f7 7f 00 00 e8 f0 69 cd 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858eed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e ec ff ff}
000ah mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
000dh mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000fh neg esi                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 de}
0011h mov rcx,7ff7c88588d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 88 85 c8 f7 7f 00 00}
001bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 69 cd 5e}
0020h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0023h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0027h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> negate<ulong>(IUnaryArithmeticOp<ulong> a)
; negate_g[64u]()[48] = {56 48 83 ec 20 e8 86 f7 ff ff 48 8b 48 08 48 8b f1 48 f7 d6 48 ff c6 48 b9 e0 8b 85 c8 f7 7f 00 00 e8 aa 69 cd 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858fa70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f7 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0014h inc rsi                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c6}
0017h mov rcx,7ff7c8858be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 85 c8 f7 7f 00 00}
0021h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 69 cd 5e}
0026h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
002ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> negate<long>(IUnaryArithmeticOp<long> a)
; negate_g[64i]()[45] = {56 48 83 ec 20 e8 66 f7 ff ff 48 8b 48 08 48 8b f1 48 f7 de 48 b9 f0 8e 85 c8 f7 7f 00 00 e8 5d 69 cd 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h call 7ff7c858faa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f7 ff ff}
000ah mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h neg rsi                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 de}
0014h mov rcx,7ff7c8858ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8e 85 c8 f7 7f 00 00}
001eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 69 cd 5e}
0023h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0027h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
002bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr)
; add_g[8u]()[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb b0 0c 64 c7 f7 7f 00 00 39 09 ff 15 12 09 0b ff 48 8b c8 e8 42 e8 ff ff 40 0f b6 78 08 48 8b ce 49 bb b8 0c 64 c7 f7 7f 00 00 39 09 ff 15 f8 08 0b ff 48 8b c8 e8 20 e8 ff ff 0f b6 48 08 40 0f b6 c7 03 c8 40 0f b6 f1 48 b9 20 79 85 c8 f7 7f 00 00 e8 cb 68 cd 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0c 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4f6eeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 09 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ebe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 e8 ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7640cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0c 64 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-0f4f708h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 08 0b ff}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c858ebe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 e8 ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0052h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
0056h mov rcx,7ff7c8857920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 79 85 c8 f7 7f 00 00}
0060h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 68 cd 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr)
; add_g[8i]()[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb c0 0c 64 c7 f7 7f 00 00 39 09 ff 15 92 08 0b ff 48 8b c8 e8 f2 e7 ff ff 48 0f be 78 08 48 8b ce 49 bb c8 0c 64 c7 f7 7f 00 00 39 09 ff 15 78 08 0b ff 48 8b c8 e8 d0 e7 ff ff 48 0f be 48 08 48 0f be c7 03 c8 48 0f be f1 48 b9 90 7c 85 c8 f7 7f 00 00 e8 3a 68 cd 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0c 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4f76eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 08 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ec28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e7 ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7640cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0c 64 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-0f4f788h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 08 0b ff}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c858ec28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 e7 ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f1}
0057h mov rcx,7ff7c8857c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c 85 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 68 cd 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr)
; add_g[16u]()[109] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb d0 0c 64 c7 f7 7f 00 00 39 09 ff 15 02 04 0b ff 48 8b c8 e8 72 e3 ff ff 0f b7 78 08 48 8b ce 49 bb d8 0c 64 c7 f7 7f 00 00 39 09 ff 15 e9 03 0b ff 48 8b c8 e8 51 e3 ff ff 0f b7 48 08 0f b7 c7 03 c8 0f b7 f1 48 b9 a0 7f 85 c8 f7 7f 00 00 e8 9e 63 cd 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0c 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4fbfeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 04 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ec48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e3 ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7640cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0c 64 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-0f4fc17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 03 0b ff}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c858ec48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 e3 ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0050h movzx esi,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f1}
0053h mov rcx,7ff7c8857fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7f 85 c8 f7 7f 00 00}
005dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 63 cd 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr)
; add_g[16i]()[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb e0 0c 64 c7 f7 7f 00 00 39 09 ff 15 82 03 0b ff 48 8b c8 e8 02 e3 ff ff 48 0f bf 78 08 48 8b ce 49 bb e8 0c 64 c7 f7 7f 00 00 39 09 ff 15 68 03 0b ff 48 8b c8 e8 e0 e2 ff ff 48 0f bf 48 08 48 0f bf c7 03 c8 48 0f bf f1 48 b9 b0 82 85 c8 f7 7f 00 00 e8 0a 63 cd 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0c 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4fc7eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 03 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ec68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 e3 ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7640ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0c 64 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-0f4fc98h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 68 03 0b ff}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c858ec68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 e2 ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
0053h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0057h mov rcx,7ff7c88582b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 82 85 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 63 cd 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr)
; add_g[32u]()[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb f0 0c 64 c7 f7 7f 00 00 39 09 ff 15 02 03 0b ff 48 8b c8 e8 92 e2 ff ff 8b 78 08 48 8b ce 49 bb f8 0c 64 c7 f7 7f 00 00 39 09 ff 15 ea 02 0b ff 48 8b c8 e8 72 e2 ff ff 8b 70 08 03 f7 48 b9 c0 85 85 c8 f7 7f 00 00 e8 86 62 cd 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0c 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4fcfeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 03 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e2 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0c 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f4fd16h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea 02 0b ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e2 ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c88585c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 85 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 62 cd 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr)
; add_g[32i]()[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 00 0d 64 c7 f7 7f 00 00 39 09 ff 15 92 02 0b ff 48 8b c8 e8 32 e2 ff ff 8b 78 08 48 8b ce 49 bb 08 0d 64 c7 f7 7f 00 00 39 09 ff 15 7a 02 0b ff 48 8b c8 e8 12 e2 ff ff 8b 70 08 03 f7 48 b9 d0 88 85 c8 f7 7f 00 00 e8 06 62 cd 5e 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4fd6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 02 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 e2 ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0d 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f4fd86h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a 02 0b ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 e2 ff ff}
0046h mov esi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 70 08}
0049h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
004bh mov rcx,7ff7c88588d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 88 85 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 62 cd 5e}
005ah mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr)
; add_g[64u]()[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 10 0d 64 c7 f7 7f 00 00 39 09 ff 15 22 02 0b ff 48 8b c8 e8 d2 e1 ff ff 48 8b 78 08 48 8b ce 49 bb 18 0d 64 c7 f7 7f 00 00 39 09 ff 15 09 02 0b ff 48 8b c8 e8 b1 e1 ff ff 48 8b 70 08 48 03 f7 48 b9 e0 8b 85 c8 f7 7f 00 00 e8 83 61 cd 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4fddeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 02 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ecc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 e1 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7640d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0d 64 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-0f4fdf7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 02 0b ff}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c858ecc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 e1 ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c8858be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 85 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 61 cd 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr)
; add_g[64i]()[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 20 0d 64 c7 f7 7f 00 00 39 09 ff 15 b2 01 0b ff 48 8b c8 e8 72 e1 ff ff 48 8b 78 08 48 8b ce 49 bb 28 0d 64 c7 f7 7f 00 00 39 09 ff 15 99 01 0b ff 48 8b c8 e8 51 e1 ff ff 48 8b 70 08 48 03 f7 48 b9 f0 8e 85 c8 f7 7f 00 00 e8 03 61 cd 5e 48 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4fe4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 01 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ece8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e1 ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7640d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0d 64 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-0f4fe67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 01 0b ff}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c858ece8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 e1 ff ff}
0047h mov rsi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 70 08}
004bh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
004eh mov rcx,7ff7c8858ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8e 85 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 61 cd 5e}
005dh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> sub<byte>(IBinaryArithmeticOp<byte> expr)
; sub_g[8u]()[112] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 30 0d 64 c7 f7 7f 00 00 39 09 ff 15 42 01 0b ff 48 8b c8 e8 f2 df ff ff 40 0f b6 78 08 48 8b ce 49 bb 38 0d 64 c7 f7 7f 00 00 39 09 ff 15 28 01 0b ff 48 8b c8 e8 d0 df ff ff 0f b6 48 08 40 0f b6 c7 2b c1 40 0f b6 f0 48 b9 20 79 85 c8 f7 7f 00 00 e8 7b 60 cd 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4febeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 01 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ebe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 df ff ff}
0026h movzx edi,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7640d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0d 64 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-0f4fed8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 28 01 0b ff}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c858ebe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 df ff ff}
0048h movzx ecx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 48 08}
004ch movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0050h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0052h movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0056h mov rcx,7ff7c8857920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 79 85 c8 f7 7f 00 00}
0060h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 60 cd 5e}
0065h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0069h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> sub<sbyte>(IBinaryArithmeticOp<sbyte> expr)
; sub_g[8i]()[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 40 0d 64 c7 f7 7f 00 00 39 09 ff 15 c2 00 0b ff 48 8b c8 e8 a2 df ff ff 48 0f be 78 08 48 8b ce 49 bb 48 0d 64 c7 f7 7f 00 00 39 09 ff 15 a8 00 0b ff 48 8b c8 e8 80 df ff ff 48 0f be 48 08 48 0f be c7 2b c1 48 0f be f0 48 b9 90 7c 85 c8 f7 7f 00 00 e8 ea 5f cd 5e 40 88 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4ff3eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 00 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ec28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 df ff ff}
0026h movsx rdi,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7640d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0d 64 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-0f4ff58h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 00 0b ff}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c858ec28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 df ff ff}
0048h movsx rcx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 48 08}
004dh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0051h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0053h movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0057h mov rcx,7ff7c8857c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c 85 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 5f cd 5e}
0066h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> sub<ushort>(IBinaryArithmeticOp<ushort> expr)
; sub_g[16u]()[109] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 50 0d 64 c7 f7 7f 00 00 39 09 ff 15 42 00 0b ff 48 8b c8 e8 32 df ff ff 0f b7 78 08 48 8b ce 49 bb 58 0d 64 c7 f7 7f 00 00 39 09 ff 15 29 00 0b ff 48 8b c8 e8 11 df ff ff 0f b7 48 08 0f b7 c7 2b c1 0f b7 f0 48 b9 a0 7f 85 c8 f7 7f 00 00 e8 5e 5f cd 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f4ffbeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 00 0b ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ec48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 df ff ff}
0026h movzx edi,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7640d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0d 64 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-0f4ffd7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 00 0b ff}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c858ec48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 df ff ff}
0047h movzx ecx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 48 08}
004bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
004eh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0050h movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0053h mov rcx,7ff7c8857fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7f 85 c8 f7 7f 00 00}
005dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 5f cd 5e}
0062h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> sub<short>(IBinaryArithmeticOp<short> expr)
; sub_g[16i]()[113] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 60 0d 64 c7 f7 7f 00 00 39 09 ff 15 c2 ff 0a ff 48 8b c8 e8 c2 de ff ff 48 0f bf 78 08 48 8b ce 49 bb 68 0d 64 c7 f7 7f 00 00 39 09 ff 15 a8 ff 0a ff 48 8b c8 e8 a0 de ff ff 48 0f bf 48 08 48 0f bf c7 2b c1 48 0f bf f0 48 b9 b0 82 85 c8 f7 7f 00 00 e8 ca 5e cd 5e 66 89 70 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f5003eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 ff 0a ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ec68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 de ff ff}
0026h movsx rdi,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 78 08}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov r11,7ff7c7640d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0d 64 c7 f7 7f 00 00}
0038h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
003ah call qword ptr [rip-0f50058h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 ff 0a ff}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h call 7ff7c858ec68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 de ff ff}
0048h movsx rcx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 48 08}
004dh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0051h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
0053h movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0057h mov rcx,7ff7c88582b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 82 85 c8 f7 7f 00 00}
0061h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 5e cd 5e}
0066h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> sub<uint>(IBinaryArithmeticOp<uint> expr)
; sub_g[32u]()[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 70 0d 64 c7 f7 7f 00 00 39 09 ff 15 42 ff 0a ff 48 8b c8 e8 52 de ff ff 8b 78 08 48 8b ce 49 bb 78 0d 64 c7 f7 7f 00 00 39 09 ff 15 2a ff 0a ff 48 8b c8 e8 32 de ff ff 8b 48 08 2b f9 48 b9 c0 85 85 c8 f7 7f 00 00 e8 46 5e cd 5e 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f500beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 ff 0a ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 de ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0d 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f500d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a ff 0a ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 de ff ff}
0046h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0049h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
004bh mov rcx,7ff7c88585c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 85 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 5e cd 5e}
005ah mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> sub<int>(IBinaryArithmeticOp<int> expr)
; sub_g[32i]()[100] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 80 0d 64 c7 f7 7f 00 00 39 09 ff 15 d2 fe 0a ff 48 8b c8 e8 f2 dd ff ff 8b 78 08 48 8b ce 49 bb 88 0d 64 c7 f7 7f 00 00 39 09 ff 15 ba fe 0a ff 48 8b c8 e8 d2 dd ff ff 8b 48 08 2b f9 48 b9 d0 88 85 c8 f7 7f 00 00 e8 c6 5d cd 5e 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f5012eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 fe 0a ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 dd ff ff}
0026h mov edi,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 78 08}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c7640d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0d 64 c7 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [rip-0f50146h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba fe 0a ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c858eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 dd ff ff}
0046h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0049h sub edi,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f9}
004bh mov rcx,7ff7c88588d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 88 85 c8 f7 7f 00 00}
0055h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 5d cd 5e}
005ah mov [rax+8],edi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 08}
005dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> sub<ulong>(IBinaryArithmeticOp<ulong> expr)
; sub_g[64u]()[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb 90 0d 64 c7 f7 7f 00 00 39 09 ff 15 62 fe 0a ff 48 8b c8 e8 92 dd ff ff 48 8b 78 08 48 8b ce 49 bb 98 0d 64 c7 f7 7f 00 00 39 09 ff 15 49 fe 0a ff 48 8b c8 e8 71 dd ff ff 48 8b 48 08 48 2b f9 48 b9 e0 8b 85 c8 f7 7f 00 00 e8 43 5d cd 5e 48 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f5019eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 fe 0a ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ecc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 dd ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7640d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0d 64 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-0f501b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 fe 0a ff}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c858ecc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 dd ff ff}
0047h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
004bh sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
004eh mov rcx,7ff7c8858be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 85 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 5d cd 5e}
005dh mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> sub<long>(IBinaryArithmeticOp<long> expr)
; sub_g[64i]()[104] = {57 56 48 83 ec 28 48 8b f1 48 8b ce 49 bb a0 0d 64 c7 f7 7f 00 00 39 09 ff 15 f2 fd 0a ff 48 8b c8 e8 32 dd ff ff 48 8b 78 08 48 8b ce 49 bb a8 0d 64 c7 f7 7f 00 00 39 09 ff 15 d9 fd 0a ff 48 8b c8 e8 11 dd ff ff 48 8b 48 08 48 2b f9 48 b9 f0 8e 85 c8 f7 7f 00 00 e8 c3 5c cd 5e 48 89 78 08 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000ch mov r11,7ff7c7640da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0d 64 c7 f7 7f 00 00}
0016h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0018h call qword ptr [rip-0f5020eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 fd 0a ff}
001eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0021h call 7ff7c858ece8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 dd ff ff}
0026h mov rdi,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 78 08}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov r11,7ff7c7640da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0d 64 c7 f7 7f 00 00}
0037h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0039h call qword ptr [rip-0f50227h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 fd 0a ff}
003fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0042h call 7ff7c858ece8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 dd ff ff}
0047h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
004bh sub rdi,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f9}
004eh mov rcx,7ff7c8858ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8e 85 c8 f7 7f 00 00}
0058h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 5c cd 5e}
005dh mov [rax+8],rdi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 08}
0061h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
