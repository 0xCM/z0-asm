; long square(long src)
; square_64i[7ff7c7187c30h, 7ff7c7187c3dh][13] = {0f 1f 44 00 00 48 8b c1 48 0f af c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:234
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
