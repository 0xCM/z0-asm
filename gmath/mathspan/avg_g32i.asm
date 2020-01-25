; int avg<int>(ReadOnlySpan<int> src)
; avg_g32i[7ff7c71ab860h, 7ff7c71ab8bdh][93] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 1a 4d 63 c8 46 8b 0c 88 4d 63 c9 49 03 c9 70 2b 41 83 c0 01 70 25 44 3b c2 7c e6 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 3d ff ff ff 7f 7f 0d 48 3d 00 00 00 80 7c 05 48 83 c4 28 c3 e8 6d 43 e2 5e cc 19 04 01 00 04 42 00 00 40}
; Capture completion code, ZEDx6
; 2020-01-24 01:44:40:132
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h mov r9d,[rax+r9*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 0c 88}
001bh movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001eh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0021h jo short 004eh                          ; JO rel8 || 70 cb || encoded[2]{70 2b}
0023h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0027h jo short 004eh                          ; JO rel8 || 70 cb || encoded[2]{70 25}
0029h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002ch jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
002eh movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
0031h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0034h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0036h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0039h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
003fh jg short 004eh                          ; JG rel8 || 7F cb || encoded[2]{7f 0d}
0041h cmp rax,0ffffffff80000000h              ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 00 80}
0047h jl short 004eh                          ; JL rel8 || 7C cb || encoded[2]{7c 05}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh ret                                     ; RET || C3 || encoded[1]{c3}
004eh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 43 e2 5e}
0053h int 3                                   ; INT3 || CC || encoded[1]{cc}
0054h sbb [rcx+rax],eax                       ; SBB r/m32, r32 || o32 19 /r || encoded[3]{19 04 01}
0057h add [rdx+rax*2],al                      ; ADD r/m8, r8 || 00 /r || encoded[3]{00 04 42}
005ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
005ch (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
