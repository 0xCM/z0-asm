; void part4x8(uint src, NatSpan<N4,byte> dst)
; part4x8__0o_ns4x0oVoid[7ff7c6e81730h, 7ff7c6e8173bh][11] = {0f 1f 44 00 00 48 8b 02 89 08 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:52:040
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov [rax],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 08}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
