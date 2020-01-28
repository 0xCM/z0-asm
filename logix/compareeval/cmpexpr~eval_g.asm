------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; cmpexpr~eval_g8u[140] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b0 12 25 c6 f7 7f 00 00 39 09 ff 15 a1 12 ea fe 8b f8 48 8b ce 49 bb b8 12 25 c6 f7 7f 00 00 39 09 ff 15 92 12 ea fe 48 8b c8 e8 d2 f0 ff ff 0f b6 58 08 48 8b ce 49 bb c0 12 25 c6 f7 7f 00 00 39 09 ff 15 79 12 ea fe 48 8b c8 e8 b1 f0 ff ff 44 0f b6 40 08 8b cf 8b d3 e8 13 35 f9 ff 40 0f b6 f0 48 b9 40 ef 84 c7 f7 7f 00 00 e8 40 6c af 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62512b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 12 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115ed5fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 12 ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62512b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 12 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115ed6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 12 ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f0 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62512c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 12 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-115ed87h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 12 ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73af100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f0 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c7343570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 35 f9 ff}
006dh movzx esi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f0}
0071h mov rcx,7ff7c784ef40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ef 84 c7 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 6c af 5e}
0080h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; cmpexpr~eval_g8i[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb c8 12 25 c6 f7 7f 00 00 39 09 ff 15 09 12 ea fe 8b f8 48 8b ce 49 bb d0 12 25 c6 f7 7f 00 00 39 09 ff 15 fa 11 ea fe 48 8b c8 e8 52 f0 ff ff 48 0f be 58 08 48 8b ce 49 bb d8 12 25 c6 f7 7f 00 00 39 09 ff 15 e0 11 ea fe 48 8b c8 e8 30 f0 ff ff 4c 0f be 40 08 8b cf 8b d3 e8 22 36 f9 ff 48 0f be f0 48 b9 b0 f2 84 c7 f7 7f 00 00 e8 8f 6b af 5e 40 88 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62512c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 12 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115edf7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 12 ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62512d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 12 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115ee06h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 11 ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 f0 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c62512d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 12 25 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-115ee20h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 11 ea fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73af130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 f0 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c7343730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 36 f9 ff}
006eh movsx rsi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f0}
0072h mov rcx,7ff7c784f2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f2 84 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 6b af 5e}
0081h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; cmpexpr~eval_g16u[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e0 12 25 c6 f7 7f 00 00 39 09 ff 15 71 11 ea fe 8b f8 48 8b ce 49 bb e8 12 25 c6 f7 7f 00 00 39 09 ff 15 62 11 ea fe 48 8b c8 e8 b2 ef ff ff 0f b7 58 08 48 8b ce 49 bb f0 12 25 c6 f7 7f 00 00 39 09 ff 15 49 11 ea fe 48 8b c8 e8 91 ef ff ff 44 0f b7 40 08 8b cf 8b d3 e8 43 37 f9 ff 0f b7 f0 48 b9 c0 f5 84 c7 f7 7f 00 00 e8 e1 6a af 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62512e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 12 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115ee8fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 11 ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62512e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 12 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115ee9eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 11 ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 ef ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62512f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 12 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-115eeb7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 11 ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73af140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ef ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h call 7ff7c7343900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 37 f9 ff}
006dh movzx esi,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f0}
0070h mov rcx,7ff7c784f5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f5 84 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 6a af 5e}
007fh mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; cmpexpr~eval_g16i[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb f8 12 25 c6 f7 7f 00 00 39 09 ff 15 d9 10 ea fe 8b f8 48 8b ce 49 bb 00 13 25 c6 f7 7f 00 00 39 09 ff 15 ca 10 ea fe 48 8b c8 e8 12 ef ff ff 48 0f bf 58 08 48 8b ce 49 bb 08 13 25 c6 f7 7f 00 00 39 09 ff 15 b0 10 ea fe 48 8b c8 e8 f0 ee ff ff 4c 0f bf 40 08 8b cf 8b d3 e8 62 3c f9 ff 48 0f bf f0 48 b9 d0 f8 84 c7 f7 7f 00 00 e8 2f 6a af 5e 66 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62512f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 12 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115ef27h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 10 ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115ef36h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 10 ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 ef ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c6251308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 13 25 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-115ef50h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 10 ea fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73af150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 ee ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h call 7ff7c7343ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 3c f9 ff}
006eh movsx rsi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f0}
0072h mov rcx,7ff7c784f8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f8 84 c7 f7 7f 00 00}
007ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 6a af 5e}
0081h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; cmpexpr~eval_g32u[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 10 13 25 c6 f7 7f 00 00 39 09 ff 15 41 10 ea fe 8b f8 48 8b ce 49 bb 18 13 25 c6 f7 7f 00 00 39 09 ff 15 32 10 ea fe 48 8b c8 e8 72 ee ff ff 8b 58 08 48 8b ce 49 bb 20 13 25 c6 f7 7f 00 00 39 09 ff 15 1a 10 ea fe 48 8b c8 e8 52 ee ff ff 44 8b 40 08 8b cf 8b d3 e8 85 3d f9 ff 8b f0 48 b9 e0 fb 84 c7 f7 7f 00 00 e8 84 69 af 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115efbfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 10 ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115efceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 10 ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 ee ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6251320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 13 25 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-115efe6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 10 ea fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73af160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 ee ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c73440a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 3d f9 ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c784fbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fb 84 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 69 af 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; cmpexpr~eval_g32i[135] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 28 13 25 c6 f7 7f 00 00 39 09 ff 15 b9 0f ea fe 8b f8 48 8b ce 49 bb 30 13 25 c6 f7 7f 00 00 39 09 ff 15 aa 0f ea fe 48 8b c8 e8 e2 ed ff ff 8b 58 08 48 8b ce 49 bb 38 13 25 c6 f7 7f 00 00 39 09 ff 15 92 0f ea fe 48 8b c8 e8 c2 ed ff ff 44 8b 40 08 8b cf 8b d3 e8 75 3e f9 ff 8b f0 48 b9 f0 fe 84 c7 f7 7f 00 00 e8 e4 68 af 5e 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115f047h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 0f ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115f056h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 0f ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ed ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c6251338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 13 25 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-115f06eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 0f ea fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73af170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 ed ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h call 7ff7c7344230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 3e f9 ff}
006bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
006dh mov rcx,7ff7c784fef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fe 84 c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 68 af 5e}
007ch mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
007fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; cmpexpr~eval_g64i[139] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 40 13 25 c6 f7 7f 00 00 39 09 ff 15 31 0f ea fe 8b f8 48 8b ce 49 bb 48 13 25 c6 f7 7f 00 00 39 09 ff 15 22 0f ea fe 48 8b c8 e8 52 ed ff ff 48 8b 58 08 48 8b ce 49 bb 50 13 25 c6 f7 7f 00 00 39 09 ff 15 09 0f ea fe 48 8b c8 e8 31 ed ff ff 4c 8b 40 08 8b cf 48 8b d3 e8 13 41 f9 ff 48 8b f0 48 b9 38 05 87 c7 f7 7f 00 00 e8 41 68 af 5e 48 89 70 08 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115f0cfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 0f ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115f0deh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 0f ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 ed ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6251350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 13 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-115f0f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 0f ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73af180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 ed ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h call 7ff7c7344570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 41 f9 ff}
006dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0070h mov rcx,7ff7c7870538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 05 87 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 68 af 5e}
007fh mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
0083h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0089h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
