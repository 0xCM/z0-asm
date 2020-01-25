; Int16 avg<Int16>(ReadOnlySpan<Int16> src)
; avg_g16i[7ff7c71be130h, 7ff7c71be186h][86] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 1b 4d 63 c8 4e 0f bf 0c 48 4d 63 c9 49 03 c9 70 2b 41 83 c0 01 70 25 44 3b c2 7c e5 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 3d ff 7f 00 00 7f 0d 48 3d 00 80 ff ff 7c 05 48 83 c4 28 c3 e8 9c 1a e1 5e cc 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:11:00:336
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movsx r9,word ptr [rax+r9*2]            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 0c 48}
001ch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001fh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0022h jo short 004fh                          ; JO rel8 || 70 cb || encoded[2]{70 2b}
0024h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0028h jo short 004fh                          ; JO rel8 || 70 cb || encoded[2]{70 25}
002ah cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002dh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
002fh movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0037h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
003ah cmp rax,7fffh                           ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff 7f 00 00}
0040h jg short 004fh                          ; JG rel8 || 7F cb || encoded[2]{7f 0d}
0042h cmp rax,0ffffffffffff8000h              ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 80 ff ff}
0048h jl short 004fh                          ; JL rel8 || 7C cb || encoded[2]{7c 05}
004ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 1a e1 5e}
0054h int 3                                   ; INT3 || CC || encoded[1]{cc}
0055h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
