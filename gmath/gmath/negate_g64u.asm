; ulong negate<ulong>(ulong src)
; negate_g64u[7ff7c71961a0h, 7ff7c71961afh][15] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 ff c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:39:345
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
