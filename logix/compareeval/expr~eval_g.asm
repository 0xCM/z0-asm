------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IExpr<ulong> expr)
; expr~eval_g64u[85] = {56 48 83 ec 20 48 8b f1 48 8b d6 48 b9 60 03 81 c7 f7 7f 00 00 e8 96 27 b3 5e 48 85 c0 74 15 48 8b c8 48 b8 f0 f6 36 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 48 8b ce 48 b8 b8 f0 36 c7 f7 7f 00 00 48 83 c4 20 5e 48 ff e0 00 00 00 19 05 02 00 05 32 01 60 40}
; Capture completion code = ZEDx6_000
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000bh mov rcx,7ff7c7810360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 03 81 c7 f7 7f 00 00}
0015h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 27 b3 5e}
001ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001dh je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 15}
001fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0022h mov rax,7ff7c736f6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 f6 36 c7 f7 7f 00 00}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h mov rax,7ff7c736f0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 f0 36 c7 f7 7f 00 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0049h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
004bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
004dh add eax,32050002h                       ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 02 00 05 32}
0052h add [rax+40h],esp                       ; ADD r/m32, r32 || o32 01 /r || encoded[3]{01 60 40}
