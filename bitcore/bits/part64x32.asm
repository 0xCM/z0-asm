------------------------------------------------------------------------------------------------------------------------
; void part64x32(ulong src, NatSpan<N2,uint> dst)
; part64x32_0o_ns2x0oN2[12] = {0f 1f 44 00 00 48 8b 02 48 89 08 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
