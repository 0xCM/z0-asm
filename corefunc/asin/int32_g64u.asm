; ref int int32<ulong>(in ulong src)
; int32_g64u[7ff7c7181800h, 7ff7c7181809h][9] = {0f 1f 44 00 00 48 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:35:898
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
