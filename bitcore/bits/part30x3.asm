------------------------------------------------------------------------------------------------------------------------
; void part30x3(uint src, in NatSpan<N10,byte> dst)
; part30x3_32u_nspan10x8u~in[50] = {0f 1f 44 00 00 48 8b 02 44 8b c1 49 b9 07 07 07 07 07 07 07 07 c4 42 bb f5 c1 4c 89 00 48 8b 02 48 83 c0 08 c1 e9 18 8b d1 c4 c2 eb f5 d1 66 89 10 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
000bh mov r9,707070707070707h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 07 07 07 07 07 07 07 07}
0015h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
001ah mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
001dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0020h add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
0024h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
0027h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0029h pdep rdx,rdx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d1}
002eh mov [rax],dx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 10}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
