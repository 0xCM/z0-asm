------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a8 15 26 c6 f7 7f 00 00 39 09 ff 15 59 04 e8 fe 8b f8 48 8b ce 49 bb b0 15 26 c6 f7 7f 00 00 39 09 ff 15 4a 04 e8 fe 48 8b c8 e8 e2 ee ff ff 0f b6 58 08 48 8b ce 49 bb b8 15 26 c6 f7 7f 00 00 39 09 ff 15 31 04 e8 fe 48 8b c8 e8 c1 ee ff ff 44 0f b6 40 08 8b cf 8b d3 e8 03 66 fa ff 40 0f b6 f0 48 b9 70 9f 94 c7 f7 7f 00 00 e8 00 5b ac 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62615a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-117fba7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 04 e8 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62615b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-117fbb6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 04 e8 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73e0050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ee ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62615b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 15 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-117fbcfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 04 e8 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73e0050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ee ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c73877a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 66 fa ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c7949f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9f 94 c7 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 5b ac 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb c0 15 26 c6 f7 7f 00 00 39 09 ff 15 c1 03 e8 fe 8b f8 48 8b ce 49 bb c8 15 26 c6 f7 7f 00 00 39 09 ff 15 b2 03 e8 fe 48 8b c8 e8 2a fb ff ff 48 0f be 58 08 48 8b ce 49 bb d0 15 26 c6 f7 7f 00 00 39 09 ff 15 98 03 e8 fe 48 8b c8 e8 08 fb ff ff 4c 0f be 40 08 8b cf 8b d3 e8 12 67 fa ff 48 0f be f0 48 b9 e0 a2 94 c7 f7 7f 00 00 e8 4f 5a ac 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62615c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-117fc3fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 03 e8 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62615c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-117fc4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 03 e8 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73e0d48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fb ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c62615d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 15 26 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-117fc68h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 03 e8 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73e0d48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 fb ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c7387960h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 67 fa ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c794a2e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a2 94 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 5a ac 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb d8 15 26 c6 f7 7f 00 00 39 09 ff 15 29 03 e8 fe 8b f8 48 8b ce 49 bb e0 15 26 c6 f7 7f 00 00 39 09 ff 15 1a 03 e8 fe 48 8b c8 e8 9a fa ff ff 0f b7 58 08 48 8b ce 49 bb e8 15 26 c6 f7 7f 00 00 39 09 ff 15 01 03 e8 fe 48 8b c8 e8 79 fa ff ff 44 0f b7 40 08 8b cf 8b d3 e8 33 6c fa ff 0f b7 f0 48 b9 f0 a5 94 c7 f7 7f 00 00 e8 a1 59 ac 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62615d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-117fcd7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 03 e8 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62615e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-117fce6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 03 e8 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73e0d68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a fa ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62615e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 15 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-117fcffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 03 e8 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73e0d68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fa ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c7387f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 6c fa ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c794a5f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a5 94 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 59 ac 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb f0 15 26 c6 f7 7f 00 00 39 09 ff 15 91 02 e8 fe 8b f8 48 8b ce 49 bb f8 15 26 c6 f7 7f 00 00 39 09 ff 15 82 02 e8 fe 48 8b c8 e8 0a fa ff ff 48 0f bf 58 08 48 8b ce 49 bb 00 16 26 c6 f7 7f 00 00 39 09 ff 15 68 02 e8 fe 48 8b c8 e8 e8 f9 ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 42 6d fa ff 48 0f bf f0 48 b9 00 a9 94 c7 f7 7f 00 00 e8 ef 58 ac 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62615f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 15 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-117fd6fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 02 e8 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62615f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 15 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-117fd7eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 02 e8 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73e0d88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a fa ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c6261600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 16 26 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-117fd98h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 68 02 e8 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73e0d88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f9 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c73880f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 6d fa ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c794a900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a9 94 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 58 ac 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 08 16 26 c6 f7 7f 00 00 39 09 ff 15 f9 01 e8 fe 8b f8 48 8b ce 49 bb 10 16 26 c6 f7 7f 00 00 39 09 ff 15 ea 01 e8 fe 48 8b c8 e8 7a f9 ff ff 8b 58 08 48 8b ce 49 bb 18 16 26 c6 f7 7f 00 00 39 09 ff 15 d2 01 e8 fe 48 8b c8 e8 5a f9 ff ff 44 8b 40 08 8b cf 8b d3 e8 55 6e fa ff 8b f0 48 b9 10 ac 94 c7 f7 7f 00 00 e8 44 58 ac 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 16 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-117fe07h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 01 e8 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 16 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-117fe16h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea 01 e8 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73e0da8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f9 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6261618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 16 26 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-117fe2eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 01 e8 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73e0da8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f9 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c73882b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 6e fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c794ac10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ac 94 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 58 ac 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 20 16 26 c6 f7 7f 00 00 39 09 ff 15 71 01 e8 fe 8b f8 48 8b ce 49 bb 28 16 26 c6 f7 7f 00 00 39 09 ff 15 62 01 e8 fe 48 8b c8 e8 fa f8 ff ff 8b 58 08 48 8b ce 49 bb 30 16 26 c6 f7 7f 00 00 39 09 ff 15 4a 01 e8 fe 48 8b c8 e8 da f8 ff ff 44 8b 40 08 8b cf 8b d3 e8 35 6f fa ff 8b f0 48 b9 20 af 94 c7 f7 7f 00 00 e8 a4 57 ac 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 16 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-117fe8fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 01 e8 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 16 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-117fe9eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 01 e8 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73e0dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f8 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6261630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 16 26 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-117feb6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 01 e8 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73e0dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f8 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c7388430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 6f fa ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c794af20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 af 94 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 57 ac 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IComparisonExpr<ulong> expr)
; eval_g[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 38 16 26 c6 f7 7f 00 00 39 09 ff 15 e9 00 e8 fe 8b f8 48 8b ce 49 bb 40 16 26 c6 f7 7f 00 00 39 09 ff 15 da 00 e8 fe 48 8b c8 e8 7a f8 ff ff 48 8b 58 08 48 8b ce 49 bb 48 16 26 c6 f7 7f 00 00 39 09 ff 15 c1 00 e8 fe 48 8b c8 e8 59 f8 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 13 70 fa ff 48 8b f0 48 b9 30 b2 94 c7 f7 7f 00 00 e8 01 57 ac 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 16 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-117ff17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 00 e8 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 16 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-117ff26h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da 00 e8 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73e0de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f8 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6261648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 16 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-117ff3fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 00 e8 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73e0de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f8 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c73885b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 70 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c794b230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b2 94 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 57 ac 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 50 16 26 c6 f7 7f 00 00 39 09 ff 15 51 00 e8 fe 8b f8 48 8b ce 49 bb 58 16 26 c6 f7 7f 00 00 39 09 ff 15 42 00 e8 fe 48 8b c8 e8 ea f7 ff ff 48 8b 58 08 48 8b ce 49 bb 60 16 26 c6 f7 7f 00 00 39 09 ff 15 29 00 e8 fe 48 8b c8 e8 c9 f7 ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 03 71 fa ff 48 8b f0 48 b9 40 b5 94 c7 f7 7f 00 00 e8 51 56 ac 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6261650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 16 26 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-117ffafh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 00 e8 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6261658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 16 26 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-117ffbeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 00 e8 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73e0e08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea f7 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6261660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 16 26 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-117ffd7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 00 e8 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73e0e08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f7 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c7388750h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 71 fa ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c794b540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b5 94 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 56 ac 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
