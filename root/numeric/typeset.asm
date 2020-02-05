------------------------------------------------------------------------------------------------------------------------
; ISet<Type> typeset(NumericKind:uint k)
; typeset_NumericKind~32u[145] = {57 56 53 48 83 ec 20 8b f1 48 b9 d0 6d ac c6 f7 7f 00 00 e8 48 c8 50 5f 48 8b f8 48 b9 d8 8a 4c c6 f7 7f 00 00 ba 27 00 00 00 e8 31 cc 50 5f 48 ba 90 6a 56 e7 0b 02 00 00 48 8b 1a 48 8d 4f 08 48 8b d7 e8 58 b9 50 5f 48 b9 e0 d9 24 c6 f7 7f 00 00 48 89 4f 18 48 b9 48 67 39 c6 f7 7f 00 00 48 89 4f 20 48 8b cb 8b d6 4c 8b c7 48 b8 88 76 99 c6 f7 7f 00 00 39 09 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h mov rcx,7ff7c6ac6dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 6d ac c6 f7 7f 00 00}
0013h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 c8 50 5f}
0018h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
001bh mov rcx,7ff7c64c8ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 8a 4c c6 f7 7f 00 00}
0025h mov edx,27h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 27 00 00 00}
002ah call 7ff825ea70b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 cc 50 5f}
002fh mov rdx,20be7566a90h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 6a 56 e7 0b 02 00 00}
0039h mov rbx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 1a}
003ch lea rcx,[rdi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4f 08}
0040h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0043h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b9 50 5f}
0048h mov rcx,7ff7c624d9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d9 24 c6 f7 7f 00 00}
0052h mov [rdi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4f 18}
0056h mov rcx,7ff7c6396748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 67 39 c6 f7 7f 00 00}
0060h mov [rdi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4f 20}
0064h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0067h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0069h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
006ch mov rax,7ff7c6997688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 76 99 c6 f7 7f 00 00}
0076h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0078h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0082h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0084h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0086h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0088h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
008ah add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
008ch add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
008fh jo short 00d1h                          ; JO rel8 || 70 cb || encoded[2]{70 40}
