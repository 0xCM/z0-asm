------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr)
; eval_cmp_pred_g[8u]()[158] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 48 14 63 c7 f7 7f 00 00 48 b8 48 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 50 14 63 c7 f7 7f 00 00 48 b8 50 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6e f6 ff ff 0f b6 58 08 48 8b ce 49 bb 58 14 63 c7 f7 7f 00 00 48 b8 58 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 47 f6 ff ff 44 0f b6 40 08 8b cf 8b d3 48 b8 70 25 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40 00}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 14 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7631448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 14 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7631450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 14 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7631450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 14 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86e8de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f6 ff ff}
004ah movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7631458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 14 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7631458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 14 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86e8de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f6 ff ff}
0071h movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah mov rax,7ff7c86e2570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 25 6e c8 f7 7f 00 00}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
008eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0090h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0092h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0094h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0096h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0098h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
009bh jo short 00ddh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
009dh (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr)
; eval_cmp_pred_g[8i]()[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 60 14 63 c7 f7 7f 00 00 48 b8 60 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 68 14 63 c7 f7 7f 00 00 48 b8 68 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ee f5 ff ff 48 0f be 58 08 48 8b ce 49 bb 70 14 63 c7 f7 7f 00 00 48 b8 70 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 f5 ff ff 4c 0f be 40 08 8b cf 8b d3 48 b8 e0 26 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 14 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7631460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 14 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7631468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 14 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7631468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 14 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86e8e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f5 ff ff}
004ah movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c7631470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 14 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c7631470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 14 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c86e8e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f5 ff ff}
0072h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh mov rax,7ff7c86e26e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 26 6e c8 f7 7f 00 00}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
008fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0091h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 04}
0093h add [rdi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 07}
0095h xor al,[rbx]                            ; XOR r8, r/m8 || 32 /r || encoded[2]{32 03}
0097h xor [rdx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 02}
0099h (bad)                                   ; <invalid> || <invalid> || encoded[2]{60 01}
009bh jo short 00ddh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr)
; eval_cmp_pred_g[16u]()[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 78 14 63 c7 f7 7f 00 00 48 b8 78 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 80 14 63 c7 f7 7f 00 00 48 b8 80 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4e f5 ff ff 0f b7 58 08 48 8b ce 49 bb 88 14 63 c7 f7 7f 00 00 48 b8 88 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 27 f5 ff ff 44 0f b7 40 08 8b cf 8b d3 48 b8 50 28 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 14 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7631478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 14 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7631480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 14 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7631480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 14 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86e8e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f5 ff ff}
004ah movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c7631488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 14 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c7631488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 14 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86e8e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f5 ff ff}
0071h movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0076h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0078h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007ah mov rax,7ff7c86e2850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 28 6e c8 f7 7f 00 00}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
008eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0090h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0092h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0094h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0096h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0098h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
009bh jo short 00ddh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr)
; eval_cmp_pred_g[16i]()[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 90 14 63 c7 f7 7f 00 00 48 b8 90 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb 98 14 63 c7 f7 7f 00 00 48 b8 98 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ae f4 ff ff 48 0f bf 58 08 48 8b ce 49 bb a0 14 63 c7 f7 7f 00 00 48 b8 a0 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 86 f4 ff ff 4c 0f bf 40 08 8b cf 8b d3 48 b8 c0 29 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c7631490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 14 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c7631490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 14 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c7631498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 14 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c7631498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 14 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86e8e38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae f4 ff ff}
004ah movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
004fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0052h mov r11,7ff7c76314a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 14 63 c7 f7 7f 00 00}
005ch mov rax,7ff7c76314a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 14 63 c7 f7 7f 00 00}
0066h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0068h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c86e8e38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f4 ff ff}
0072h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0077h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0079h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
007bh mov rax,7ff7c86e29c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 29 6e c8 f7 7f 00 00}
0085h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0089h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
008fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0091h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 04}
0093h add [rdi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 07}
0095h xor al,[rbx]                            ; XOR r8, r/m8 || 32 /r || encoded[2]{32 03}
0097h xor [rdx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 02}
0099h (bad)                                   ; <invalid> || <invalid> || encoded[2]{60 01}
009bh jo short 00ddh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr)
; eval_cmp_pred_g[32u]()[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a8 14 63 c7 f7 7f 00 00 48 b8 a8 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb b0 14 63 c7 f7 7f 00 00 48 b8 b0 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0e f4 ff ff 8b 58 08 48 8b ce 49 bb b8 14 63 c7 f7 7f 00 00 48 b8 b8 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e8 f3 ff ff 44 8b 40 08 8b cf 8b d3 48 b8 30 2b 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76314a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 14 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c76314a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 14 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76314b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 14 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c76314b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 14 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e f4 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c76314b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 14 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c76314b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 14 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f3 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h mov rax,7ff7c86e2b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 2b 6e c8 f7 7f 00 00}
0082h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0086h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0087h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0088h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0089h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
008ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
008eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0090h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0092h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0094h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0097h jo short 00d9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr)
; eval_cmp_pred_g[32i]()[153] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb c0 14 63 c7 f7 7f 00 00 48 b8 c0 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb c8 14 63 c7 f7 7f 00 00 48 b8 c8 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6e f3 ff ff 8b 58 08 48 8b ce 49 bb d0 14 63 c7 f7 7f 00 00 48 b8 d0 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 48 f3 ff ff 44 8b 40 08 8b cf 8b d3 48 b8 60 2c 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76314c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 14 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c76314c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 14 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76314c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 14 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c76314c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 14 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86e8e58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f3 ff ff}
004ah mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
004dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0050h mov r11,7ff7c76314d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 14 63 c7 f7 7f 00 00}
005ah mov rax,7ff7c76314d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 14 63 c7 f7 7f 00 00}
0064h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0066h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0068h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006bh call 7ff7c86e8e58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 f3 ff ff}
0070h mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0074h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0076h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0078h mov rax,7ff7c86e2c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 2c 6e c8 f7 7f 00 00}
0082h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0086h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0087h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0088h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0089h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
008ch sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
008eh add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0090h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0092h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0094h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0097h jo short 00d9h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr)
; eval_cmp_pred_g[64i]()[157] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb d8 14 63 c7 f7 7f 00 00 48 b8 d8 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f8 48 8b ce 49 bb e0 14 63 c7 f7 7f 00 00 48 b8 e0 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ce f2 ff ff 48 8b 58 08 48 8b ce 49 bb e8 14 63 c7 f7 7f 00 00 48 b8 e8 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a7 f2 ff ff 4c 8b 40 08 8b cf 48 8b d3 48 b8 c0 2e 6e c8 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c76314d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 14 63 c7 f7 7f 00 00}
0017h mov rax,7ff7c76314d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 14 63 c7 f7 7f 00 00}
0021h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0023h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0025h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov r11,7ff7c76314e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 14 63 c7 f7 7f 00 00}
0034h mov rax,7ff7c76314e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 14 63 c7 f7 7f 00 00}
003eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0040h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0042h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0045h call 7ff7c86e8e68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f2 ff ff}
004ah mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h mov r11,7ff7c76314e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 14 63 c7 f7 7f 00 00}
005bh mov rax,7ff7c76314e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 14 63 c7 f7 7f 00 00}
0065h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0067h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0069h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006ch call 7ff7c86e8e68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f2 ff ff}
0071h mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0075h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0077h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
007ah mov rax,7ff7c86e2ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 2e 6e c8 f7 7f 00 00}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
008eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0090h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0092h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0094h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0096h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0098h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
009bh jo short 00ddh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
