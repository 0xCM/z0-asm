; long right<long>(long a, long b)
; rproject_g64i[7ff7c6a39e90h, 7ff7c6a39e99h][9] = {0f 1f 44 00 00 48 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:283
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
