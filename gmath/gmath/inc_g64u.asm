; ulong inc<ulong>(ulong a)
; inc_g64u[7ff7c71a8390h, 7ff7c71a839ch][12] = {0f 1f 44 00 00 48 ff c1 48 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:58:326
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc rcx                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c1}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
