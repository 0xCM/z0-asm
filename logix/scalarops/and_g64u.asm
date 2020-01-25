; ulong and<ulong>(ulong a, ulong b)
; and_g64u[7ff7c6ba6ef0h, 7ff7c6ba6efch][12] = {0f 1f 44 00 00 48 23 d1 48 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:42:195
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
