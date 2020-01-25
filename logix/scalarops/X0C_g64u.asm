; ulong f0c<ulong>(ulong a, ulong b, ulong c)
; X0C_g64u[7ff7c6ca66c0h, 7ff7c6ca66cfh][15] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 23 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:50:276
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
