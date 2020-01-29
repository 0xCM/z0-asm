------------------------------------------------------------------------------------------------------------------------
; void part24x3(uint src, in NatSpan<N8,byte> dst)
; part24x3_32u_ns8x8uN8[29] = {0f 1f 44 00 00 48 8b 02 8b d1 48 b9 07 07 07 07 07 07 07 07 c4 e2 eb f5 d1 48 89 10 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah mov rcx,707070707070707h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 07 07 07 07 07 07 07 07}
0014h pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
0019h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
