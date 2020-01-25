; sbyte avg<sbyte>(ReadOnlySpan<sbyte> src)
; avg_g8i[7ff7c71ab2a0h, 7ff7c71ab2f2h][82] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 1b 4d 63 c8 4e 0f be 0c 08 4d 63 c9 49 03 c9 70 27 41 83 c0 01 70 21 44 3b c2 7c e5 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 83 f8 7f 7f 0b 48 83 f8 80 7c 05 48 83 c4 28 c3 e8 30 49 e2 5e cc 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 01:44:40:126
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movsx r9,byte ptr [rax+r9]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 0c 08}
001ch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001fh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0022h jo short 004bh                          ; JO rel8 || 70 cb || encoded[2]{70 27}
0024h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0028h jo short 004bh                          ; JO rel8 || 70 cb || encoded[2]{70 21}
002ah cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002dh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
002fh movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0037h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
003ah cmp rax,7fh                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 7f}
003eh jg short 004bh                          ; JG rel8 || 7F cb || encoded[2]{7f 0b}
0040h cmp rax,0ffffffffffffff80h              ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 80}
0044h jl short 004bh                          ; JL rel8 || 7C cb || encoded[2]{7c 05}
0046h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
004bh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 49 e2 5e}
0050h int 3                                   ; INT3 || CC || encoded[1]{cc}
0051h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
