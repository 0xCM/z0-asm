------------------------------------------------------------------------------------------------------------------------
; void part2x8(ushort src, NatSpan<N2,byte> dst)
; part2x8_16u_nspan2x8u[12] = {0f 1f 44 00 00 48 8b 02 66 89 08 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov [rax],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 08}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
