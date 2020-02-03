------------------------------------------------------------------------------------------------------------------------
; ref Block64<byte> unpack8(byte packed, in Block64<byte> unpacked, int block)
; unpack8_8u_b64x8u~in_32i[63] = {48 83 ec 28 90 41 c1 e0 03 41 8b c0 48 83 c0 08 44 8b 4a 08 49 3b c1 77 26 48 8b 02 4d 63 c0 49 03 c0 0f b6 c9 49 b8 01 01 01 01 01 01 01 01 c4 c2 f3 f5 c8 48 89 08 48 8b c2 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
0009h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000ch add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
0010h mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0014h cmp rax,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c1}
0017h ja short 003fh                          ; JA rel8 || 77 cb || encoded[2]{77 26}
0019h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ch movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
001fh add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0022h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0025h mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
002fh pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
0034h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0037h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<byte> unpack8(ushort packed, in Block128<byte> unpacked, int block)
; unpack8_16u_b128x8u~in_32i[85] = {48 83 ec 28 90 41 c1 e0 04 41 8b c0 48 83 c0 10 44 8b 4a 08 49 3b c1 77 3c 48 8b 02 4d 63 c0 49 03 c0 0f b7 c9 44 0f b6 c1 49 b9 01 01 01 01 01 01 01 01 c4 42 bb f5 c1 4c 89 00 48 83 c0 08 c1 f9 08 0f b6 c9 c4 c2 f3 f5 c9 48 89 08 48 8b c2 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
0009h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000ch add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0010h mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0014h cmp rax,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c1}
0017h ja short 0055h                          ; JA rel8 || 77 cb || encoded[2]{77 3c}
0019h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ch movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
001fh add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0022h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0025h movzx r8d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c1}
0029h mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
0033h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0038h mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
003bh add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
003fh sar ecx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 08}
0042h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0045h pdep rcx,rcx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c9}
004ah mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
004dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0050h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<byte> unpack8(uint packed, in Block256<byte> unpacked, int block)
; unpack8_32u_b256x8u~in_32i[138] = {48 83 ec 28 90 41 c1 e0 05 41 8b c0 48 83 c0 20 44 8b 4a 08 49 3b c1 77 71 48 8b 02 4d 63 c0 49 03 c0 44 0f b6 c1 49 b9 01 01 01 01 01 01 01 01 c4 42 bb f5 c1 4c 89 00 4c 8d 40 08 44 8b c9 41 c1 e9 08 45 0f b6 c9 49 ba 01 01 01 01 01 01 01 01 c4 42 b3 f5 ca 4d 89 08 4c 8d 40 10 44 8b c9 41 c1 e9 10 45 0f b6 c9 c4 42 b3 f5 ca 4d 89 08 48 83 c0 18 c1 e9 18 0f b6 c9 c4 c2 f3 f5 ca 48 89 08 48 8b c2 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h shl r8d,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 05}
0009h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000ch add rax,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 20}
0010h mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0014h cmp rax,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c1}
0017h ja short 008ah                          ; JA rel8 || 77 cb || encoded[2]{77 71}
0019h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ch movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
001fh add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0022h movzx r8d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c1}
0026h mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
0030h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0035h mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
0038h lea r8,[rax+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 08}
003ch mov r9d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c9}
003fh shr r9d,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 08}
0043h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0047h mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
0051h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
0056h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
0059h lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
005dh mov r9d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c9}
0060h shr r9d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 10}
0064h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0068h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
006dh mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
0070h add rax,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 18}
0074h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
0077h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
007ah pdep rcx,rcx,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 ca}
007fh mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0082h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0085h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block512<byte> unpack8(ulong packed, in Block512<byte> unpacked, int block)
; unpack8_64u_b512x8u~in_32i[136] = {48 83 ec 28 90 41 c1 e0 06 41 8b c0 48 83 c0 40 44 8b 4a 08 49 3b c1 0f 87 ca 00 00 00 48 8b 02 4d 63 c0 49 03 c0 44 8b c1 45 0f b6 c8 49 ba 01 01 01 01 01 01 01 01 c4 42 b3 f5 ca 4c 89 08 4c 8d 48 08 45 8b d0 41 c1 ea 08 45 0f b6 d2 49 bb 01 01 01 01 01 01 01 01 c4 42 ab f5 d3 4d 89 11 4c 8d 48 10 45 8b d0 41 c1 ea 10 45 0f b6 d2 c4 42 ab f5 d3 4d 89 11 4c 8d 48 18 41 c1 e8 18 45 0f b6 c0 c4 42 bb f5 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h shl r8d,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 06}
0009h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000ch add rax,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 40}
0010h mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0014h cmp rax,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c1}
0017h ja near ptr 00e7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ca 00 00 00}
001dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0020h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0023h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0026h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0029h movzx r9d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c8}
002dh mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
0037h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
003ch mov [rax],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 08}
003fh lea r9,[rax+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 48 08}
0043h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0046h shr r10d,8                              ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 08}
004ah movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
004eh mov r11,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 01 01 01 01 01 01 01 01}
0058h pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
005dh mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
0060h lea r9,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 48 10}
0064h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0067h shr r10d,10h                            ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 10}
006bh movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
006fh pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
0074h mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
0077h lea r9,[rax+18h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 48 18}
007bh shr r8d,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 18}
007fh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0083h pdep r8,r8,r11                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c3}
