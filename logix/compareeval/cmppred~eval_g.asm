------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr)
; cmppred~eval_g[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 58 13 25 c6 f7 7f 00 00 39 09 ff 15 99 0e ea fe 8b f8 48 8b ce 49 bb 60 13 25 c6 f7 7f 00 00 39 09 ff 15 8a 0e ea fe 48 8b c8 e8 22 ec ff ff 0f b6 58 08 48 8b ce 49 bb 68 13 25 c6 f7 7f 00 00 39 09 ff 15 71 0e ea fe 48 8b c8 e8 01 ec ff ff 44 0f b6 40 08 8b cf 8b d3 48 b8 80 69 3a c7 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115f167h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 0e ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115f176h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a 0e ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 ec ff ff}
003eh movzx ebx,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6251368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 13 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-115f18fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 0e ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73af100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ec ff ff}
005fh movzx r8d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h mov rax,7ff7c73a6980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 69 3a c7 f7 7f 00 00}
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
; bit eval<sbyte>(IComparisonPred<sbyte> expr)
; cmppred~eval_g[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 70 13 25 c6 f7 7f 00 00 39 09 ff 15 f1 0c ea fe 8b f8 48 8b ce 49 bb 78 13 25 c6 f7 7f 00 00 39 09 ff 15 e2 0c ea fe 48 8b c8 e8 92 ea ff ff 48 0f be 58 08 48 8b ce 49 bb 80 13 25 c6 f7 7f 00 00 39 09 ff 15 c8 0c ea fe 48 8b c8 e8 70 ea ff ff 4c 0f be 40 08 8b cf 8b d3 48 b8 e0 6a 3a c7 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115f30fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 0c ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115f31eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 0c ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 ea ff ff}
003eh movsx rbx,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c6251380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 13 25 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-115f338h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 0c ea fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73af130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 ea ff ff}
0060h movsx r8,byte ptr [rax+8]               ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4c 0f be 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h mov rax,7ff7c73a6ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 6a 3a c7 f7 7f 00 00}
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
; cmppred~eval_g[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb 88 13 25 c6 f7 7f 00 00 39 09 ff 15 69 0c ea fe 8b f8 48 8b ce 49 bb 90 13 25 c6 f7 7f 00 00 39 09 ff 15 5a 0c ea fe 48 8b c8 e8 02 ea ff ff 0f b7 58 08 48 8b ce 49 bb 98 13 25 c6 f7 7f 00 00 39 09 ff 15 41 0c ea fe 48 8b c8 e8 e1 e9 ff ff 44 0f b7 40 08 8b cf 8b d3 48 b8 50 6c 3a c7 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c6251388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115f397h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 0c ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c6251390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115f3a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a 0c ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 ea ff ff}
003eh movzx ebx,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c6251398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 13 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-115f3bfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 0c ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73af140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 e9 ff ff}
005fh movzx r8d,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{44 0f b7 40 08}
0064h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0066h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0068h mov rax,7ff7c73a6c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 6c 3a c7 f7 7f 00 00}
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
; cmppred~eval_g[141] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb a0 13 25 c6 f7 7f 00 00 39 09 ff 15 e1 0b ea fe 8b f8 48 8b ce 49 bb a8 13 25 c6 f7 7f 00 00 39 09 ff 15 d2 0b ea fe 48 8b c8 e8 72 e9 ff ff 48 0f bf 58 08 48 8b ce 49 bb b0 13 25 c6 f7 7f 00 00 39 09 ff 15 b8 0b ea fe 48 8b c8 e8 50 e9 ff ff 4c 0f bf 40 08 8b cf 8b d3 48 b8 b0 6d 3a c7 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62513a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115f41fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 0b ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62513a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115f42eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 0b ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e9 ff ff}
003eh movsx rbx,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 58 08}
0043h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0046h mov r11,7ff7c62513b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 13 25 c6 f7 7f 00 00}
0050h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0052h call qword ptr [rip-115f448h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 0b ea fe}
0058h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005bh call 7ff7c73af150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 e9 ff ff}
0060h movsx r8,word ptr [rax+8]               ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4c 0f bf 40 08}
0065h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0067h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0069h mov rax,7ff7c73a6db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 6d 3a c7 f7 7f 00 00}
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
; cmppred~eval_g[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb b8 13 25 c6 f7 7f 00 00 39 09 ff 15 59 0b ea fe 8b f8 48 8b ce 49 bb c0 13 25 c6 f7 7f 00 00 39 09 ff 15 4a 0b ea fe 48 8b c8 e8 e2 e8 ff ff 8b 58 08 48 8b ce 49 bb c8 13 25 c6 f7 7f 00 00 39 09 ff 15 32 0b ea fe 48 8b c8 e8 c2 e8 ff ff 44 8b 40 08 8b cf 8b d3 48 b8 20 6f 3a c7 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62513b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115f4a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 0b ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62513c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115f4b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 0b ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 e8 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c62513c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 13 25 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-115f4ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 0b ea fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73af160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 e8 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h mov rax,7ff7c73a6f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 6f 3a c7 f7 7f 00 00}
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
; cmppred~eval_g[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb d0 13 25 c6 f7 7f 00 00 39 09 ff 15 d1 0a ea fe 8b f8 48 8b ce 49 bb d8 13 25 c6 f7 7f 00 00 39 09 ff 15 c2 0a ea fe 48 8b c8 e8 52 e8 ff ff 8b 58 08 48 8b ce 49 bb e0 13 25 c6 f7 7f 00 00 39 09 ff 15 aa 0a ea fe 48 8b c8 e8 32 e8 ff ff 44 8b 40 08 8b cf 8b d3 48 b8 50 70 3a c7 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62513d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115f52fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 0a ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62513d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115f53eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 0a ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 e8 ff ff}
003eh mov ebx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 58 08}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov r11,7ff7c62513e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 13 25 c6 f7 7f 00 00}
004eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0050h call qword ptr [rip-115f556h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 0a ea fe}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73af170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 e8 ff ff}
005eh mov r8d,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 40 08}
0062h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0064h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0066h mov rax,7ff7c73a7050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 70 3a c7 f7 7f 00 00}
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
; cmppred~eval_g[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e8 13 25 c6 f7 7f 00 00 39 09 ff 15 49 0a ea fe 8b f8 48 8b ce 49 bb f0 13 25 c6 f7 7f 00 00 39 09 ff 15 3a 0a ea fe 48 8b c8 e8 c2 e7 ff ff 48 8b 58 08 48 8b ce 49 bb f8 13 25 c6 f7 7f 00 00 39 09 ff 15 21 0a ea fe 48 8b c8 e8 a1 e7 ff ff 4c 8b 40 08 8b cf 48 8b d3 48 b8 b0 72 3a c7 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62513e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 13 25 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-115f5b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 0a ea fe}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62513f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 13 25 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-115f5c6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a 0a ea fe}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c73af180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 e7 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62513f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 13 25 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-115f5dfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 0a ea fe}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c73af180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 e7 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h mov rax,7ff7c73a72b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 72 3a c7 f7 7f 00 00}
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
