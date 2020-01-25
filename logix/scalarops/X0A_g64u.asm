; ulong f0a<ulong>(ulong a, ulong b, ulong c)
; X0A_g64u[7ff7c6ca6350h, 7ff7c6ca635fh][15] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 49 23 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:50:253
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
