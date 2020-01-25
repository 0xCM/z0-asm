; void part64x1(ulong src, Span<byte> dst)
; part64x1__0o8uVoid[7ff7c6e7c960h, 7ff7c6e7ca12h][178] = {48 83 ec 28 90 48 8b 02 48 ba 01 01 01 01 01 01 01 01 c4 e2 f3 f5 d2 48 89 10 48 8d 50 08 4c 8b c1 49 c1 e8 08 49 b9 01 01 01 01 01 01 01 01 c4 42 bb f5 c1 4c 89 02 48 8d 50 10 4c 8b c1 49 c1 e8 10 c4 42 bb f5 c1 4c 89 02 48 8d 50 18 4c 8b c1 49 c1 e8 18 c4 42 bb f5 c1 4c 89 02 48 8d 50 20 4c 8b c1 49 c1 e8 20 c4 42 bb f5 c1 4c 89 02 48 8d 50 28 4c 8b c1 49 c1 e8 28 c4 42 bb f5 c1 4c 89 02 48 8d 50 30 4c 8b c1 49 c1 e8 30 c4 42 bb f5 c1 4c 89 02 48 83 c0 38 48 c1 e9 38 c4 c2 f3 f5 d1 48 89 10 48 83 c4 28 c3 e8 10 32 15 5f cc 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:51:965
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0012h pdep rdx,rcx,rdx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 f3 f5 d2}
0017h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
001ah lea rdx,[rax+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 08}
001eh mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
0021h shr r8,8                                ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 08}
0025h mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
002fh pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0034h mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
0037h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
003bh mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
003eh shr r8,10h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 10}
0042h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0047h mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
004ah lea rdx,[rax+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 18}
004eh mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
0051h shr r8,18h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 18}
0055h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
005ah mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
005dh lea rdx,[rax+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 20}
0061h mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
0064h shr r8,20h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 20}
0068h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
006dh mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
0070h lea rdx,[rax+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 28}
0074h mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
0077h shr r8,28h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 28}
007bh pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0080h mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
0083h lea rdx,[rax+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 30}
0087h mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
008ah shr r8,30h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 30}
008eh pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0093h mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
0096h add rax,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 38}
009ah shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
009eh pdep rdx,rcx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 d1}
00a3h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
00a6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00aah ret                                     ; RET || C3 || encoded[1]{c3}
00abh call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 32 15 5f}
00b0h int 3                                   ; INT3 || CC || encoded[1]{cc}
00b1h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
