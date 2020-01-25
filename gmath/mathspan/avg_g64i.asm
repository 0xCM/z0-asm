; long avg<long>(ReadOnlySpan<long> src)
; avg_g64i[7ff7c71ab930h, 7ff7c71ab96eh][62] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 14 4d 63 c8 4a 03 0c c8 70 1b 41 83 c0 01 70 15 44 3b c2 7c ec 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 83 c4 28 c3 e8 b3 42 e2 5e cc}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 01:44:40:136
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 0028h                         ; JLE rel8 || 7E cb || encoded[2]{7e 14}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h add rcx,[rax+r9*8]                      ; ADD r64, r/m64 || REX.W 03 /r || encoded[4]{4a 03 0c c8}
001bh jo short 0038h                          ; JO rel8 || 70 cb || encoded[2]{70 1b}
001dh add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0021h jo short 0038h                          ; JO rel8 || 70 cb || encoded[2]{70 15}
0023h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0026h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c ec}
0028h movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0030h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 42 e2 5e}
003dh int 3                                   ; INT3 || CC || encoded[1]{cc}
