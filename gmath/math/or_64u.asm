; ulong or(ulong a, ulong b)
; or_64u[7ff7c7186040h, 7ff7c718604ch][12] = {0f 1f 44 00 00 48 8b c1 48 0b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:37:058
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
