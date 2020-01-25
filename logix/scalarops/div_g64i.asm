; long div<long>(long a, long b)
; div_g64i[7ff7c6cc2f90h, 7ff7c6cc2fa1h][17] = {0f 1f 44 00 00 4c 8b c2 48 8b c1 48 99 49 f7 f8 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:543
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000dh idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
