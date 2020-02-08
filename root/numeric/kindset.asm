------------------------------------------------------------------------------------------------------------------------
; ISet<NumericKind:uint> kindset(NumericKind:uint k)
; kindset_NumericKind~32u[125] = {57 56 53 48 83 ec 20 8b f1 48 b9 d8 65 e3 c7 f7 7f 00 00 e8 98 5d 3d 5f 48 8b f8 48 ba 48 6a 1f d3 5d 02 00 00 48 8b 1a 48 8d 4f 08 48 8b d7 e8 bc 4e 3d 5f 48 b9 60 dd 62 c7 f7 7f 00 00 48 89 4f 18 48 b9 90 7c d3 c7 f7 7f 00 00 48 89 4f 20 48 8b cb 8b d6 4c 8b c7 48 b8 80 7a d3 c7 f7 7f 00 00 39 09 48 83 c4 20 5b 5e 5f 48 ff e0 00 00 19 07 04 00 07 32 03 30 02 60 01 70 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h mov rcx,7ff7c7e365d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 65 e3 c7 f7 7f 00 00}
0013h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 5d 3d 5f}
0018h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
001bh mov rdx,25dd31f6a48h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 6a 1f d3 5d 02 00 00}
0025h mov rbx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 1a}
0028h lea rcx,[rdi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4f 08}
002ch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
002fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 4e 3d 5f}
0034h mov rcx,7ff7c762dd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 dd 62 c7 f7 7f 00 00}
003eh mov [rdi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4f 18}
0042h mov rcx,7ff7c7d37c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7c d3 c7 f7 7f 00 00}
004ch mov [rdi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4f 20}
0050h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0053h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0055h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0058h mov rax,7ff7c7d37a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 7a d3 c7 f7 7f 00 00}
0062h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0064h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
006eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0070h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0072h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0074h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 32}
0076h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0078h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
007bh jo short 00bdh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
