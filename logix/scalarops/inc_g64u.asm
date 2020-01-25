; ulong inc<ulong>(ulong a)
; inc_g64u[7ff7c6ca4de0h, 7ff7c6ca4dech][12] = {0f 1f 44 00 00 48 ff c1 48 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:50:086
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc rcx                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c1}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
