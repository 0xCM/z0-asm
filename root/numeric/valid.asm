------------------------------------------------------------------------------------------------------------------------
; bool valid(NumericIndicator:ushort src)
; valid_NumericIndicator~16u[85] = {57 56 48 83 ec 28 8b f1 48 b9 68 21 6d c6 f7 7f 00 00 e8 e9 cd 50 5f 48 8b f8 48 b9 68 21 6d c6 f7 7f 00 00 e8 17 51 4b 5f 48 8b c8 66 89 77 08 48 8b d7 48 b8 70 05 37 c6 f7 7f 00 00 48 83 c4 28 5e 5f 48 ff e0 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h mov rcx,7ff7c66d2168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 21 6d c6 f7 7f 00 00}
0012h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 cd 50 5f}
0017h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
001ah mov rcx,7ff7c66d2168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 21 6d c6 f7 7f 00 00}
0024h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 51 4b 5f}
0029h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
002ch mov [rdi+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 77 08}
0030h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0033h mov rax,7ff7c6370570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 05 37 c6 f7 7f 00 00}
003dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0046h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0048h sbb [rsi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 06}
004ah add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
004ch (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 42}
004eh add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0051h jo short 0053h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0053h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
