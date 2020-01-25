; ref Int16& int16<float>(in float src)
; int16_g32f[7ff7c71815c0h, 7ff7c71815c9h][9] = {0f 1f 44 00 00 48 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:35:844
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
