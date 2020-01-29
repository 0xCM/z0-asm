------------------------------------------------------------------------------------------------------------------------
; void Part4x5(uint src, NatSpan<N4,byte> dst)
; Part4x5_32u_ns4x8uN4[21] = {0f 1f 44 00 00 48 8b 02 ba 1f 1f 1f 1f c4 e2 73 f5 d2 89 10 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,1f1f1f1fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 1f 1f 1f 1f}
000dh pdep edx,ecx,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 73 f5 d2}
0012h mov [rax],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 10}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
