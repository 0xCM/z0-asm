------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr)
; eval_cmp_pred_g[8u]()[144] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 58 13 63 c7 f7 7f 00 00 39 09 ff 15 79 60 f4 fe 8b f8 48 8b ce 49 bb 60 13 63 c7 f7 7f 00 00 39 09 ff 15 6a 60 f4 fe 48 8b c8 e8 0a f7 ff ff 0f b6 58 08 48 8b ce 49 bb 68 13 63 c7 f7 7f 00 00 39 09 ff 15 51 60 f4 fe 48 8b c8 e8 e9 f6 ff ff 44 0f b6 40 08 8b cf 8b d3 48 b8 90 41 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40 00 00 00 00 00 00 00}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10b9f87h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 60 f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10b9f96h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 60 f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f7 ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7631368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 13 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10b9fafh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 60 f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86eaa08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f6 ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h mov rax,7ff7c86e4190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 41 6e c8 f7 7f 00 00}
0072h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
0089h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
008bh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
008dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
008fh (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr)
; eval_cmp_pred_g[8i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 70 13 63 c7 f7 7f 00 00 39 09 ff 15 f1 5f f4 fe 8b f8 48 8b ce 49 bb 78 13 63 c7 f7 7f 00 00 39 09 ff 15 e2 5f f4 fe 48 8b c8 e8 9a f6 ff ff 48 0f be 58 08 48 8b ce 49 bb 80 13 63 c7 f7 7f 00 00 39 09 ff 15 c8 5f f4 fe 48 8b c8 e8 78 f6 ff ff 4c 0f be 40 08 8b cf 8b d3 48 b8 00 43 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10ba00fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 5f f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10ba01eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 5f f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f6 ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c7631380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 13 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10ba038h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 5f f4 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c86eaa38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f6 ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h mov rax,7ff7c86e4300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 43 6e c8 f7 7f 00 00}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0081h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 04}
0083h add [rdi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 07}
0085h xor al,[rbx]                            ; XOR r8, r/m8 || 32 /r || encoded[2]{32 03}
0087h xor [rdx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 02}
0089h (bad)                                   ; <invalid> || <invalid> || encoded[2]{60 01}
008bh jo short 00cdh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr)
; eval_cmp_pred_g[16u]()[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 88 13 63 c7 f7 7f 00 00 39 09 ff 15 69 5f f4 fe 8b f8 48 8b ce 49 bb 90 13 63 c7 f7 7f 00 00 39 09 ff 15 5a 5f f4 fe 48 8b c8 e8 0a f6 ff ff 0f b7 58 08 48 8b ce 49 bb 98 13 63 c7 f7 7f 00 00 39 09 ff 15 41 5f f4 fe 48 8b c8 e8 e9 f5 ff ff 44 0f b7 40 08 8b cf 8b d3 48 b8 70 44 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10ba097h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 5f f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c7631390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10ba0a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a 5f f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f6 ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c7631398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 13 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10ba0bfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 5f f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86eaa48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f5 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h mov rax,7ff7c86e4470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 44 6e c8 f7 7f 00 00}
0072h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr)
; eval_cmp_pred_g[16i]()[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a0 13 63 c7 f7 7f 00 00 39 09 ff 15 e1 5e f4 fe 8b f8 48 8b ce 49 bb a8 13 63 c7 f7 7f 00 00 39 09 ff 15 d2 5e f4 fe 48 8b c8 e8 7a f5 ff ff 48 0f bf 58 08 48 8b ce 49 bb b0 13 63 c7 f7 7f 00 00 39 09 ff 15 b8 5e f4 fe 48 8b c8 e8 58 f5 ff ff 4c 0f bf 40 08 8b cf 8b d3 48 b8 e0 45 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76313a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10ba11fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 5e f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76313a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10ba12eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 5e f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f5 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c76313b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 13 63 c7 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-10ba148h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 5e f4 fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c86eaa58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f5 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h mov rax,7ff7c86e45e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 45 6e c8 f7 7f 00 00}
0073h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0081h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 04}
0083h add [rdi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 07}
0085h xor al,[rbx]                            ; XOR r8, r/m8 || 32 /r || encoded[2]{32 03}
0087h xor [rdx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 02}
0089h (bad)                                   ; <invalid> || <invalid> || encoded[2]{60 01}
008bh jo short 00cdh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr)
; eval_cmp_pred_g[32u]()[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b8 13 63 c7 f7 7f 00 00 39 09 ff 15 59 5e f4 fe 8b f8 48 8b ce 49 bb c0 13 63 c7 f7 7f 00 00 39 09 ff 15 4a 5e f4 fe 48 8b c8 e8 ea f4 ff ff 8b 58 08 48 8b ce 49 bb c8 13 63 c7 f7 7f 00 00 39 09 ff 15 32 5e f4 fe 48 8b c8 e8 ca f4 ff ff 44 8b 40 08 8b cf 8b d3 48 b8 50 47 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76313b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10ba1a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 5e f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76313c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10ba1b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 5e f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea f4 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c76313c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 13 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10ba1ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 5e f4 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c86eaa68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca f4 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h mov rax,7ff7c86e4750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 47 6e c8 f7 7f 00 00}
0070h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr)
; eval_cmp_pred_g[32i]()[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb d0 13 63 c7 f7 7f 00 00 39 09 ff 15 d1 5d f4 fe 8b f8 48 8b ce 49 bb d8 13 63 c7 f7 7f 00 00 39 09 ff 15 c2 5d f4 fe 48 8b c8 e8 5a f4 ff ff 8b 58 08 48 8b ce 49 bb e0 13 63 c7 f7 7f 00 00 39 09 ff 15 aa 5d f4 fe 48 8b c8 e8 3a f4 ff ff 44 8b 40 08 8b cf 8b d3 48 b8 80 48 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76313d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10ba22fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 5d f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76313d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10ba23eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 5d f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a f4 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c76313e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 13 63 c7 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-10ba256h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 5d f4 fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c86eaa78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f4 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h mov rax,7ff7c86e4880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 48 6e c8 f7 7f 00 00}
0070h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr)
; eval_cmp_pred_g[64i]()[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e8 13 63 c7 f7 7f 00 00 39 09 ff 15 49 5d f4 fe 8b f8 48 8b ce 49 bb f0 13 63 c7 f7 7f 00 00 39 09 ff 15 3a 5d f4 fe 48 8b c8 e8 ca f3 ff ff 48 8b 58 08 48 8b ce 49 bb f8 13 63 c7 f7 7f 00 00 39 09 ff 15 21 5d f4 fe 48 8b c8 e8 a9 f3 ff ff 4c 8b 40 08 8b cf 48 8b d3 48 b8 e0 4a 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76313e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 13 63 c7 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-10ba2b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 5d f4 fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c76313f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 13 63 c7 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-10ba2c6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a 5d f4 fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c86eaa88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca f3 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c76313f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 13 63 c7 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-10ba2dfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 5d f4 fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c86eaa88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f3 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h mov rax,7ff7c86e4ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 4a 6e c8 f7 7f 00 00}
0072h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
007ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
007eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0082h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0084h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0087h jo short 00c9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
