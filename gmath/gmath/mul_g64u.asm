; ulong mul<ulong>(ulong a, ulong b)
; mul_g64u[7ff7c71960a0h, 7ff7c71960adh][13] = {0f 1f 44 00 00 48 0f af d1 48 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:335
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0009h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
