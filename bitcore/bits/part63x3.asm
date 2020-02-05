------------------------------------------------------------------------------------------------------------------------
; void part63x3(ulong src, in NatSpan<N21,byte> dst)
; part63x3_64u_nspan21x8u~in[91] = {0f 1f 44 00 00 48 b8 ff ff ff ff ff ff ff 7f 48 23 c1 48 8b 0a 49 b8 07 07 07 07 07 07 07 07 c4 42 fb f5 c0 4c 89 01 48 8b 0a 48 83 c1 08 4c 8b c0 49 c1 e8 18 49 b9 07 07 07 07 07 07 07 07 c4 42 bb f5 c1 4c 89 01 48 8b 12 48 83 c2 10 48 c1 e8 30 c4 c2 fb f5 c1 48 89 02 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
000fh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0012h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
0015h mov r8,707070707070707h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 07 07 07 07 07 07 07 07}
001fh pdep r8,rax,r8                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 fb f5 c0}
0024h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0027h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
002ah add rcx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 08}
002eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0031h shr r8,18h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 18}
0035h mov r9,707070707070707h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 07 07 07 07 07 07 07 07}
003fh pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
004ah add rdx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 10}
004eh shr rax,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 30}
0052h pdep rax,rax,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c1}
0057h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
