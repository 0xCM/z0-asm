------------------------------------------------------------------------------------------------------------------------
; bit eval<ulong>(IComparisonPred<ulong> expr)
; cmppred~eval_g[137] = {57 56 53 48 83 ec 20 48 8b f1 48 8b ce 49 bb e0 10 28 c6 f7 7f 00 00 39 09 ff 15 71 95 3d ff 8b f8 48 8b ce 49 bb e8 10 28 c6 f7 7f 00 00 39 09 ff 15 62 95 3d ff 48 8b c8 e8 ca d2 ff ff 48 8b 58 08 48 8b ce 49 bb f0 10 28 c6 f7 7f 00 00 39 09 ff 15 49 95 3d ff 48 8b c8 e8 a9 d2 ff ff 4c 8b 40 08 8b cf 48 8b d3 48 b8 30 23 ea c6 f7 7f 00 00 48 83 c4 20 5b 5e 5f 48 ff e0 19 07 04 00 07 32 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000dh mov r11,7ff7c62810e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 10 28 c6 f7 7f 00 00}
0017h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0019h call qword ptr [rip-0c26a8fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 95 3d ff}
001fh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov r11,7ff7c62810e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 10 28 c6 f7 7f 00 00}
002eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0030h call qword ptr [rip-0c26a9eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 95 3d ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c6ea4e58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca d2 ff ff}
003eh mov rbx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 58 08}
0042h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0045h mov r11,7ff7c62810f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 10 28 c6 f7 7f 00 00}
004fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0051h call qword ptr [rip-0c26ab7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 95 3d ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c6ea4e58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 d2 ff ff}
005fh mov r8,[rax+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 40 08}
0063h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0065h mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0068h mov rax,7ff7c6ea2330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 23 ea c6 f7 7f 00 00}
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
